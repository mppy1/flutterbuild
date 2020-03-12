import 'package:json_annotation/json_annotation.dart';

part 'version.g.dart';

@JsonSerializable()
class Version{
  final String name;
  final String versionName;
  final int versionCode;
  final String url;

  Version({this.name, this.versionName,this.versionCode, this.url});

  factory Version.fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

  Map<String, dynamic> toJson()=> _$VersionToJson(this);


}