part of 'application_bloc.dart';

@freezed
class ApplicationBlocState with _$ApplicationBlocState {
  const factory ApplicationBlocState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(true) bool isCelsius,
    @Default("en") String locale,
  }) = _ApplicationState;

  factory ApplicationBlocState.fromJson(Map<String, Object?> json) =>
      _$ApplicationBlocStateFromJson(json);
}
