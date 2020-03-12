// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Version _$VersionFromJson(Map<String, dynamic> json) {
  return Version(
    name: json['name'] as String,
    versionName: json['versionName'] as String,
    versionCode: json['versionCode'] as int,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'name': instance.name,
      'versionName': instance.versionName,
      'versionCode': instance.versionCode,
      'url': instance.url,
    };
