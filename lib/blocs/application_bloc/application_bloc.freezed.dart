// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(bool isCelcious) changeUnit,
    required TResult Function(String locale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function(bool isCelcious)? changeUnit,
    TResult? Function(String locale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(bool isCelcious)? changeUnit,
    TResult Function(String locale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeUnit value) changeUnit,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeUnit value)? changeUnit,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeUnit value)? changeUnit,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationBlocEventCopyWith<$Res> {
  factory $ApplicationBlocEventCopyWith(ApplicationBlocEvent value,
          $Res Function(ApplicationBlocEvent) then) =
      _$ApplicationBlocEventCopyWithImpl<$Res, ApplicationBlocEvent>;
}

/// @nodoc
class _$ApplicationBlocEventCopyWithImpl<$Res,
        $Val extends ApplicationBlocEvent>
    implements $ApplicationBlocEventCopyWith<$Res> {
  _$ApplicationBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeThemeImplCopyWith<$Res> {
  factory _$$ChangeThemeImplCopyWith(
          _$ChangeThemeImpl value, $Res Function(_$ChangeThemeImpl) then) =
      __$$ChangeThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ChangeThemeImplCopyWithImpl<$Res>
    extends _$ApplicationBlocEventCopyWithImpl<$Res, _$ChangeThemeImpl>
    implements _$$ChangeThemeImplCopyWith<$Res> {
  __$$ChangeThemeImplCopyWithImpl(
      _$ChangeThemeImpl _value, $Res Function(_$ChangeThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ChangeThemeImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ChangeThemeImpl implements _ChangeTheme {
  const _$ChangeThemeImpl(this.themeMode);

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ApplicationBlocEvent.changeTheme(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeThemeImplCopyWith<_$ChangeThemeImpl> get copyWith =>
      __$$ChangeThemeImplCopyWithImpl<_$ChangeThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(bool isCelcious) changeUnit,
    required TResult Function(String locale) changeLocale,
  }) {
    return changeTheme(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function(bool isCelcious)? changeUnit,
    TResult? Function(String locale)? changeLocale,
  }) {
    return changeTheme?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(bool isCelcious)? changeUnit,
    TResult Function(String locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeUnit value) changeUnit,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeUnit value)? changeUnit,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeUnit value)? changeUnit,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeTheme implements ApplicationBlocEvent {
  const factory _ChangeTheme(final ThemeMode themeMode) = _$ChangeThemeImpl;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$ChangeThemeImplCopyWith<_$ChangeThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeUnitImplCopyWith<$Res> {
  factory _$$ChangeUnitImplCopyWith(
          _$ChangeUnitImpl value, $Res Function(_$ChangeUnitImpl) then) =
      __$$ChangeUnitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCelcious});
}

/// @nodoc
class __$$ChangeUnitImplCopyWithImpl<$Res>
    extends _$ApplicationBlocEventCopyWithImpl<$Res, _$ChangeUnitImpl>
    implements _$$ChangeUnitImplCopyWith<$Res> {
  __$$ChangeUnitImplCopyWithImpl(
      _$ChangeUnitImpl _value, $Res Function(_$ChangeUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCelcious = null,
  }) {
    return _then(_$ChangeUnitImpl(
      null == isCelcious
          ? _value.isCelcious
          : isCelcious // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeUnitImpl implements _ChangeUnit {
  const _$ChangeUnitImpl(this.isCelcious);

  @override
  final bool isCelcious;

  @override
  String toString() {
    return 'ApplicationBlocEvent.changeUnit(isCelcious: $isCelcious)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUnitImpl &&
            (identical(other.isCelcious, isCelcious) ||
                other.isCelcious == isCelcious));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCelcious);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUnitImplCopyWith<_$ChangeUnitImpl> get copyWith =>
      __$$ChangeUnitImplCopyWithImpl<_$ChangeUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(bool isCelcious) changeUnit,
    required TResult Function(String locale) changeLocale,
  }) {
    return changeUnit(isCelcious);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function(bool isCelcious)? changeUnit,
    TResult? Function(String locale)? changeLocale,
  }) {
    return changeUnit?.call(isCelcious);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(bool isCelcious)? changeUnit,
    TResult Function(String locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeUnit != null) {
      return changeUnit(isCelcious);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeUnit value) changeUnit,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeUnit value)? changeUnit,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeUnit value)? changeUnit,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeUnit != null) {
      return changeUnit(this);
    }
    return orElse();
  }
}

abstract class _ChangeUnit implements ApplicationBlocEvent {
  const factory _ChangeUnit(final bool isCelcious) = _$ChangeUnitImpl;

  bool get isCelcious;
  @JsonKey(ignore: true)
  _$$ChangeUnitImplCopyWith<_$ChangeUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeLocaleImplCopyWith<$Res> {
  factory _$$ChangeLocaleImplCopyWith(
          _$ChangeLocaleImpl value, $Res Function(_$ChangeLocaleImpl) then) =
      __$$ChangeLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$ChangeLocaleImplCopyWithImpl<$Res>
    extends _$ApplicationBlocEventCopyWithImpl<$Res, _$ChangeLocaleImpl>
    implements _$$ChangeLocaleImplCopyWith<$Res> {
  __$$ChangeLocaleImplCopyWithImpl(
      _$ChangeLocaleImpl _value, $Res Function(_$ChangeLocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLocaleImpl(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeLocaleImpl implements _ChangeLocale {
  const _$ChangeLocaleImpl(this.locale);

  @override
  final String locale;

  @override
  String toString() {
    return 'ApplicationBlocEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      __$$ChangeLocaleImplCopyWithImpl<_$ChangeLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) changeTheme,
    required TResult Function(bool isCelcious) changeUnit,
    required TResult Function(String locale) changeLocale,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? changeTheme,
    TResult? Function(bool isCelcious)? changeUnit,
    TResult? Function(String locale)? changeLocale,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? changeTheme,
    TResult Function(bool isCelcious)? changeUnit,
    TResult Function(String locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTheme value) changeTheme,
    required TResult Function(_ChangeUnit value) changeUnit,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTheme value)? changeTheme,
    TResult? Function(_ChangeUnit value)? changeUnit,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTheme value)? changeTheme,
    TResult Function(_ChangeUnit value)? changeUnit,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocale implements ApplicationBlocEvent {
  const factory _ChangeLocale(final String locale) = _$ChangeLocaleImpl;

  String get locale;
  @JsonKey(ignore: true)
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApplicationBlocState _$ApplicationBlocStateFromJson(Map<String, dynamic> json) {
  return _ApplicationState.fromJson(json);
}

/// @nodoc
mixin _$ApplicationBlocState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get isCelsius => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationBlocStateCopyWith<ApplicationBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationBlocStateCopyWith<$Res> {
  factory $ApplicationBlocStateCopyWith(ApplicationBlocState value,
          $Res Function(ApplicationBlocState) then) =
      _$ApplicationBlocStateCopyWithImpl<$Res, ApplicationBlocState>;
  @useResult
  $Res call({ThemeMode themeMode, bool isCelsius, String locale});
}

/// @nodoc
class _$ApplicationBlocStateCopyWithImpl<$Res,
        $Val extends ApplicationBlocState>
    implements $ApplicationBlocStateCopyWith<$Res> {
  _$ApplicationBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? isCelsius = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isCelsius: null == isCelsius
          ? _value.isCelsius
          : isCelsius // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicationStateImplCopyWith<$Res>
    implements $ApplicationBlocStateCopyWith<$Res> {
  factory _$$ApplicationStateImplCopyWith(_$ApplicationStateImpl value,
          $Res Function(_$ApplicationStateImpl) then) =
      __$$ApplicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, bool isCelsius, String locale});
}

/// @nodoc
class __$$ApplicationStateImplCopyWithImpl<$Res>
    extends _$ApplicationBlocStateCopyWithImpl<$Res, _$ApplicationStateImpl>
    implements _$$ApplicationStateImplCopyWith<$Res> {
  __$$ApplicationStateImplCopyWithImpl(_$ApplicationStateImpl _value,
      $Res Function(_$ApplicationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? isCelsius = null,
    Object? locale = null,
  }) {
    return _then(_$ApplicationStateImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isCelsius: null == isCelsius
          ? _value.isCelsius
          : isCelsius // ignore: cast_nullable_to_non_nullable
              as bool,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplicationStateImpl implements _ApplicationState {
  const _$ApplicationStateImpl(
      {this.themeMode = ThemeMode.system,
      this.isCelsius = true,
      this.locale = "en"});

  factory _$ApplicationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicationStateImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final bool isCelsius;
  @override
  @JsonKey()
  final String locale;

  @override
  String toString() {
    return 'ApplicationBlocState(themeMode: $themeMode, isCelsius: $isCelsius, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.isCelsius, isCelsius) ||
                other.isCelsius == isCelsius) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, isCelsius, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      __$$ApplicationStateImplCopyWithImpl<_$ApplicationStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationStateImplToJson(
      this,
    );
  }
}

abstract class _ApplicationState implements ApplicationBlocState {
  const factory _ApplicationState(
      {final ThemeMode themeMode,
      final bool isCelsius,
      final String locale}) = _$ApplicationStateImpl;

  factory _ApplicationState.fromJson(Map<String, dynamic> json) =
      _$ApplicationStateImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  bool get isCelsius;
  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
