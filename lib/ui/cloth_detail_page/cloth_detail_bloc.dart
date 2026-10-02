import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:outfity/domain/models.dart';
import 'package:outfity/domain/repository.dart';

part 'cloth_detail_bloc.freezed.dart';

@freezed
sealed class ClothDetailEvent with _$ClothDetailEvent {
  const factory ClothDetailEvent.fetch({int? clothId}) = _Fetch;

  const factory ClothDetailEvent.titleChanged(String title) = _TitleChanged;

  const factory ClothDetailEvent.commentChanged(
      String comment) = _CommentChanged;

  const factory ClothDetailEvent.changeCategory({required Category? category}) =
  _ChangeCategory;

  const factory ClothDetailEvent.changeLocation({required Location? location}) =
  _ChangeLocation;

  const factory ClothDetailEvent.saveCategory({required String title}) =
  _SaveCategory;

  const factory ClothDetailEvent.saveLocation({required String title}) =
  _SaveLocation;

  const factory ClothDetailEvent.changeCategories(
      {required List<Category> categories}) =
  _ChangeCategories;

  const factory ClothDetailEvent.changeLocations(
      {required List<Location> locations}) =
  _ChangeLocations;
}

@freezed
abstract class ClothDetailState with _$ClothDetailState {
  const factory ClothDetailState({
    required String pageTitle,
    required String title,
    required String comment,
    required Category? category,
    required Location? location,
    required List<Category> categories,
    required List<Location> locations,
    required bool isFirstInit,
  }) = _ClothDetailState;
}

class ClothDetailBloc extends Bloc<ClothDetailEvent, ClothDetailState> {
  final Repository _repository;
  StreamSubscription? _categorySubscription;
  StreamSubscription? _locationSubscription;

  ClothDetailBloc({required this._repository})
      : super(
    ClothDetailState(
      pageTitle: '',
      title: '',
      comment: '',
      category: null,
      location: null,
      categories: [],
      locations: [],
      isFirstInit: false,
    ),
  ) {
    on<ClothDetailEvent>(
          (event, emit) =>
          event.map(
            fetch: (event) => _fetch(event, emit),
            changeCategory: (event) => _onChangeCategory(event, emit),
            changeLocation: (event) => _onChangeLocation(event, emit),
            saveCategory: (event) => _onSaveCategory(event, emit),
            saveLocation: (event) => _onSaveLocation(event, emit),
            changeCategories: (event) => _onChangeCategories(event, emit),
            changeLocations: (event) => _onChangeLocations(event, emit),
            titleChanged: (event) => _onTitleChange(event, emit),
            commentChanged: (event) => _onCommentChange(event, emit),
          ),
    );

    _categorySubscription = _repository.watchCategories().listen((categories) {
      add(ClothDetailEvent.changeCategories(categories: categories));
      });

    _locationSubscription = _repository.watchLocations().listen((locations) {
      add(ClothDetailEvent.changeLocations(locations: locations));
    });
  }

  Future<void> _fetch(_Fetch event, Emitter<ClothDetailState> emit) async {
    final clothId = event.clothId;
    if (clothId == null) {
      emit(state.copyWith(pageTitle: 'New'));
    } else {
      final cloth = await _repository.findClothById(clothId);

      final categoryId = cloth?.categoryId;
      final locationId = cloth?.locationId;

      final category = categoryId == null
          ? null
          : await _repository.findCategoryById(categoryId);
      final location = locationId == null
          ? null
          : await _repository.findLocationById(locationId);

      emit(
        state.copyWith(
          pageTitle: 'Edit',
          title: cloth?.title ?? '',
          comment: cloth?.comment ?? '',
          category: category,
          location: location,
          isFirstInit: true,
        ),
      );
    }
  }

  void _onChangeCategory(_ChangeCategory event,
      Emitter<ClothDetailState> emit,) {
    emit(state.copyWith(category: event.category));
  }

  void _onChangeLocation(_ChangeLocation event,
      Emitter<ClothDetailState> emit,) {
    emit(state.copyWith(location: event.location));
  }

  @override
  Future<void> close() {
    _categorySubscription?.cancel();
    _locationSubscription?.cancel();
    return super.close();
  }

  Future<void> _onSaveCategory(_SaveCategory event,
      Emitter<ClothDetailState> emit) async {
    final category = await _repository.saveCategory(title: event.title);
    emit(state.copyWith(category: category));
  }

  Future<void> _onSaveLocation(_SaveLocation event,
      Emitter<ClothDetailState> emit) async {
    final location = await _repository.saveLocation(title: event.title);
    emit(state.copyWith(location: location));
  }

  void _onChangeCategories(_ChangeCategories event, Emitter<ClothDetailState> emit) {
    emit(state.copyWith(categories: event.categories));
  }

  void _onChangeLocations(_ChangeLocations event, Emitter<ClothDetailState> emit) {
    emit(state.copyWith(locations: event.locations));
  }

  void _onTitleChange(_TitleChanged event, Emitter<ClothDetailState> emit) {
    emit(
      state.copyWith(
        title: event.title,
      ),
    );
  }

  void _onCommentChange(_CommentChanged event, Emitter<ClothDetailState> emit) {
    emit(
      state.copyWith(
        comment: event.comment,
      ),
    );
  }
}
