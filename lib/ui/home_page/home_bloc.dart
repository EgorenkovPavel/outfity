import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:outfity/domain/models.dart';

import '../../domain/repository.dart';

part 'home_bloc.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetch() = _Fetch;
}

@freezed
abstract class HomeState with _$HomeState {

  const factory HomeState({required List<Cloth> clothes}) = _HomeState;
}

class HomeBloc extends Bloc<HomeEvent, HomeState>{

  final Repository _repository;

  HomeBloc({required this._repository}) :super(HomeState(clothes: [])){
    on<HomeEvent>(
      (event, emit) => event.map(fetch: (event) => _onFetch(event, emit)),
    );
  }

  Future<void> _onFetch(_Fetch event, Emitter<HomeState> emit) async {
    await emit.forEach<List<Cloth>>(
      _repository.watchClothes(),
      onData: (clothes) {
        return state.copyWith(
          clothes: clothes,
        );
      },
    );

  }

}