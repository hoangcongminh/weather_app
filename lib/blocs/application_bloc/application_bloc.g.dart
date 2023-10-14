// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationStateImpl _$$ApplicationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplicationStateImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      isCelsius: json['isCelsius'] as bool? ?? true,
    );

Map<String, dynamic> _$$ApplicationStateImplToJson(
        _$ApplicationStateImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'isCelsius': instance.isCelsius,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
