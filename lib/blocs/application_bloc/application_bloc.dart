import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'application_event.dart';
part 'application_state.dart';
part 'application_bloc.g.dart';
part 'application_bloc.freezed.dart';

class ApplicationBloc
    extends HydratedBloc<ApplicationBlocEvent, ApplicationBlocState> {
  ApplicationBloc() : super(const _ApplicationState()) {
    on<_ChangeTheme>((event, emit) {
      if (event.themeMode != state.themeMode) {
        emit(state.copyWith(themeMode: event.themeMode));
      }
    });
    on<_ChangeUnit>((event, emit) {
      emit(state.copyWith(isCelsius: event.isCelcious));
    });
  }

  @override
  ApplicationBlocState? fromJson(Map<String, dynamic> json) =>
      ApplicationBlocState.fromJson(json['appState']);

  @override
  Map<String, dynamic>? toJson(ApplicationBlocState state) =>
      {'appState': state.toJson()};
}
