import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:outfity/domain/models.dart';

import '../../domain/repository.dart';

part 'home_bloc.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.categoryFiltersChanged(
      List<int> categoryIds,) = _CategoryFiltersChanged;

  const factory HomeEvent.locationFiltersChanged(
      List<int> locationIds,) = _LocationFiltersChanged;

  const factory HomeEvent.filtersCleared() = _FiltersCleared;

  const factory HomeEvent.clothsChanged(List<Cloth> clothes) = _ClothsChanged;

  const factory HomeEvent.categoriesChanged(
      List<Category> categories) = _CategoriesChanged;

  const factory HomeEvent.locationsChanged(
      List<Location> locations) = _LocationsChanged;
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required List<Cloth> clothes,
    required List<Cloth> allClothes,
    required List<Category> categories,
    required List<Location> locations,
    required List<int> selectedCategoryIds,
    required List<int> selectedLocationIds,
  }) = _HomeState;
}

class HomeBloc extends Bloc<HomeEvent, HomeState>{

  final Repository _repository;
  StreamSubscription? _clothSubscription;
  StreamSubscription? _categoriesSubscription;
  StreamSubscription? _locationsSubscription;

  HomeBloc({required this._repository})
      : super(
    HomeState(
      clothes: [],
      allClothes: [],
      categories: [],
      locations: [],
      selectedCategoryIds: [],
      selectedLocationIds: [],
    ),
  ) {
    on<HomeEvent>(
          (event, emit) =>
          event.map(
            categoryFiltersChanged: (event) =>
                _onCategoryFiltersChanged(event, emit),
            locationFiltersChanged: (event) =>
                _onLocationFiltersChanged(event, emit),
            filtersCleared: (event) => _onFiltersCleared(event, emit),
            clothsChanged: (event) => _onClothesChanged(event, emit),
            categoriesChanged: (event) => _onCategoriesChanged(event, emit),
            locationsChanged: (event) => _onLocationsChanged(event, emit),),
    );

    _clothSubscription = _repository.watchClothes().listen((clothes) {
      add(HomeEvent.clothsChanged(clothes));
    });

    _categoriesSubscription = _repository.watchCategories().listen((categories){
      add(HomeEvent.categoriesChanged(categories));
    });

    _locationsSubscription = _repository.watchLocations().listen((locations){
      add(HomeEvent.locationsChanged(locations));
    });

  }

  @override
  Future<void> close() {
    _clothSubscription?.cancel();
    _categoriesSubscription?.cancel();
    _locationsSubscription?.cancel();
    return super.close();
  }

  Future<void> _onClothesChanged(_ClothsChanged event,
      Emitter<HomeState> emit) async {
    emit(state.copyWith(
        allClothes: event.clothes,
        clothes: _filterClothes(
          event.clothes, categoryIds: state.selectedCategoryIds,
          locationIds: state.selectedLocationIds,)));
  }

  void _onCategoryFiltersChanged(_CategoryFiltersChanged event,
      Emitter<HomeState> emit,) {
    emit(state.copyWith(
      selectedCategoryIds: event.categoryIds,
      clothes: _filterClothes(
        state.allClothes,
        categoryIds: event.categoryIds,
        locationIds: state.selectedLocationIds,
      ),
    ));
  }

  void _onLocationFiltersChanged(_LocationFiltersChanged event,
      Emitter<HomeState> emit,) {
    emit(state.copyWith(
      selectedLocationIds: event.locationIds,
      clothes: _filterClothes(
        state.allClothes,
        categoryIds: state.selectedCategoryIds,
        locationIds: event.locationIds,
      ),
    ));
  }

  void _onFiltersCleared(_FiltersCleared event,
      Emitter<HomeState> emit,) {
    emit(state.copyWith(
      selectedCategoryIds: [],
      selectedLocationIds: [],
      clothes: state.allClothes,
    ));
  }

  List<Cloth> _filterClothes(List<Cloth> clothes, {
    required List<int> categoryIds,
    required List<int> locationIds,
  }) {
    return clothes.where((cloth) {
      final matchesCategory = categoryIds.isEmpty ||
          (cloth.categoryId != null &&
              categoryIds.contains(cloth.categoryId));

      final matchesLocation = locationIds.isEmpty ||
          (cloth.locationId != null &&
              locationIds.contains(cloth.locationId));

      return matchesCategory && matchesLocation;
    }).toList();
  }

  void _onCategoriesChanged(_CategoriesChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(categories: event.categories));
  }

  void _onLocationsChanged(_LocationsChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(locations: event.locations));
  }

}