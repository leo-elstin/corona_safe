// To parse this JSON data, do
//
//     final keralDto = keralDtoFromJson(jsonString);

import 'dart:convert';

KeralDto keralDtoFromJson(String str) => KeralDto.fromJson(json.decode(str));

String keralDtoToJson(KeralDto data) => json.encode(data.toJson());

class KeralDto {
  Kerala kerala;

  KeralDto({
    this.kerala,
  });

  factory KeralDto.fromJson(Map<String, dynamic> json) => KeralDto(
        kerala: json["Kerala"] == null ? null : Kerala.fromJson(json["Kerala"]),
      );

  Map<String, dynamic> toJson() => {
        "Kerala": kerala == null ? null : kerala.toJson(),
      };
}

class Kerala {
  Map<String, DistrictDatum> districtData;

  Kerala({
    this.districtData,
  });

  factory Kerala.fromJson(Map<String, dynamic> json) => Kerala(
        districtData: json["districtData"] == null
            ? null
            : Map.from(json["districtData"]).map((k, v) =>
                MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null
            ? null
            : Map.from(districtData)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class DistrictDatum {
  int confirmed;
  String lastupdatedtime;
  Delta delta;

  DistrictDatum({
    this.confirmed,
    this.lastupdatedtime,
    this.delta,
  });

  factory DistrictDatum.fromJson(Map<String, dynamic> json) => DistrictDatum(
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
        lastupdatedtime:
            json["lastupdatedtime"] == null ? null : json["lastupdatedtime"],
        delta: json["delta"] == null ? null : Delta.fromJson(json["delta"]),
      );

  Map<String, dynamic> toJson() => {
        "confirmed": confirmed == null ? null : confirmed,
        "lastupdatedtime": lastupdatedtime == null ? null : lastupdatedtime,
        "delta": delta == null ? null : delta.toJson(),
      };
}

class Delta {
  int confirmed;

  Delta({
    this.confirmed,
  });

  factory Delta.fromJson(Map<String, dynamic> json) => Delta(
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
      );

  Map<String, dynamic> toJson() => {
        "confirmed": confirmed == null ? null : confirmed,
      };
}
