// To parse this JSON data, do
//
//     final countryReport = countryReportFromJson(jsonString);

import 'dart:convert';

CountryReport countryReportFromJson(String str) =>
    CountryReport.fromJson(json.decode(str));

String countryReportToJson(CountryReport data) => json.encode(data.toJson());

class CountryReport {
  bool success;
  Data data;
  DateTime lastRefreshed;
  DateTime lastOriginUpdate;

  CountryReport({
    this.success,
    this.data,
    this.lastRefreshed,
    this.lastOriginUpdate,
  });

  factory CountryReport.fromJson(Map<String, dynamic> json) => CountryReport(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        lastRefreshed: json["lastRefreshed"] == null
            ? null
            : DateTime.parse(json["lastRefreshed"]),
        lastOriginUpdate: json["lastOriginUpdate"] == null
            ? null
            : DateTime.parse(json["lastOriginUpdate"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
        "lastRefreshed":
            lastRefreshed == null ? null : lastRefreshed.toIso8601String(),
        "lastOriginUpdate": lastOriginUpdate == null
            ? null
            : lastOriginUpdate.toIso8601String(),
      };
}

class Data {
  Summary summary;
  List<Regional> regional;

  Data({
    this.summary,
    this.regional,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        summary:
            json["summary"] == null ? null : Summary.fromJson(json["summary"]),
        regional: json["regional"] == null
            ? null
            : List<Regional>.from(
                json["regional"].map((x) => Regional.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "summary": summary == null ? null : summary.toJson(),
        "regional": regional == null
            ? null
            : List<dynamic>.from(regional.map((x) => x.toJson())),
      };
}

class Regional {
  String loc;
  int confirmedCasesIndian;
  int confirmedCasesForeign;
  int discharged;
  int deaths;

  Regional({
    this.loc,
    this.confirmedCasesIndian,
    this.confirmedCasesForeign,
    this.discharged,
    this.deaths,
  });

  factory Regional.fromJson(Map<String, dynamic> json) => Regional(
        loc: json["loc"] == null ? null : json["loc"],
        confirmedCasesIndian: json["confirmedCasesIndian"] == null
            ? null
            : json["confirmedCasesIndian"],
        confirmedCasesForeign: json["confirmedCasesForeign"] == null
            ? null
            : json["confirmedCasesForeign"],
        discharged: json["discharged"] == null ? null : json["discharged"],
        deaths: json["deaths"] == null ? null : json["deaths"],
      );

  Map<String, dynamic> toJson() => {
        "loc": loc == null ? null : loc,
        "confirmedCasesIndian":
            confirmedCasesIndian == null ? null : confirmedCasesIndian,
        "confirmedCasesForeign":
            confirmedCasesForeign == null ? null : confirmedCasesForeign,
        "discharged": discharged == null ? null : discharged,
        "deaths": deaths == null ? null : deaths,
      };
}

class Summary {
  int total;
  int confirmedCasesIndian;
  int confirmedCasesForeign;
  int discharged;
  int deaths;
  int confirmedButLocationUnidentified;

  Summary({
    this.total,
    this.confirmedCasesIndian,
    this.confirmedCasesForeign,
    this.discharged,
    this.deaths,
    this.confirmedButLocationUnidentified,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
        total: json["total"] == null ? null : json["total"],
        confirmedCasesIndian: json["confirmedCasesIndian"] == null
            ? null
            : json["confirmedCasesIndian"],
        confirmedCasesForeign: json["confirmedCasesForeign"] == null
            ? null
            : json["confirmedCasesForeign"],
        discharged: json["discharged"] == null ? null : json["discharged"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        confirmedButLocationUnidentified:
            json["confirmedButLocationUnidentified"] == null
                ? null
                : json["confirmedButLocationUnidentified"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "confirmedCasesIndian":
            confirmedCasesIndian == null ? null : confirmedCasesIndian,
        "confirmedCasesForeign":
            confirmedCasesForeign == null ? null : confirmedCasesForeign,
        "discharged": discharged == null ? null : discharged,
        "deaths": deaths == null ? null : deaths,
        "confirmedButLocationUnidentified":
            confirmedButLocationUnidentified == null
                ? null
                : confirmedButLocationUnidentified,
      };
}
