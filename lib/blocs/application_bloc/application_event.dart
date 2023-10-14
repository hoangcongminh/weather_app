part of 'application_bloc.dart';

@freezed
class ApplicationBlocEvent with _$ApplicationBlocEvent {
  const factory ApplicationBlocEvent.changeTheme(ThemeMode themeMode) =
      _ChangeTheme;
  const factory ApplicationBlocEvent.changeUnit(bool isCelcious) = _ChangeUnit;
}
