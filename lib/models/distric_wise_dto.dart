// To parse this JSON data, do
//
//     final disctrictWiseDto = disctrictWiseDtoFromJson(jsonString);

import 'dart:convert';

DisctrictWiseDto disctrictWiseDtoFromJson(String str) =>
    DisctrictWiseDto.fromJson(json.decode(str));

String disctrictWiseDtoToJson(DisctrictWiseDto data) =>
    json.encode(data.toJson());

class DisctrictWiseDto {
  AndhraPradesh kerala;
  Delhi delhi;
  Telangana telangana;
  AndhraPradesh rajasthan;
  AndhraPradesh haryana;
  AndhraPradesh uttarPradesh;
  Ladakh ladakh;
  AndhraPradesh tamilNadu;
  JammuAndKashmir jammuAndKashmir;
  AndhraPradesh karnataka;
  AndhraPradesh maharashtra;
  Punjab punjab;
  AndhraPradesh andhraPradesh;
  Uttarakhand uttarakhand;
  Odisha odisha;
  Puducherry puducherry;
  WestBengal westBengal;
  Chandigarh chandigarh;
  Chhattisgarh chhattisgarh;
  AndhraPradesh gujarat;
  HimachalPradesh himachalPradesh;
  MadhyaPradesh madhyaPradesh;
  AndhraPradesh bihar;
  Manipur manipur;
  Mizoram mizoram;
  Goa goa;
  AndamanAndNicobarIslands andamanAndNicobarIslands;
  Jharkhand jharkhand;
  Assam assam;
  ArunachalPradesh arunachalPradesh;

  DisctrictWiseDto({
    this.kerala,
    this.delhi,
    this.telangana,
    this.rajasthan,
    this.haryana,
    this.uttarPradesh,
    this.ladakh,
    this.tamilNadu,
    this.jammuAndKashmir,
    this.karnataka,
    this.maharashtra,
    this.punjab,
    this.andhraPradesh,
    this.uttarakhand,
    this.odisha,
    this.puducherry,
    this.westBengal,
    this.chandigarh,
    this.chhattisgarh,
    this.gujarat,
    this.himachalPradesh,
    this.madhyaPradesh,
    this.bihar,
    this.manipur,
    this.mizoram,
    this.goa,
    this.andamanAndNicobarIslands,
    this.jharkhand,
    this.assam,
    this.arunachalPradesh,
  });

  factory DisctrictWiseDto.fromJson(Map<String, dynamic> json) =>
      DisctrictWiseDto(
        kerala: json["Kerala"] == null
            ? null
            : AndhraPradesh.fromJson(json["Kerala"]),
        delhi: json["Delhi"] == null ? null : Delhi.fromJson(json["Delhi"]),
        telangana: json["Telangana"] == null
            ? null
            : Telangana.fromJson(json["Telangana"]),
        rajasthan: json["Rajasthan"] == null
            ? null
            : AndhraPradesh.fromJson(json["Rajasthan"]),
        haryana: json["Haryana"] == null
            ? null
            : AndhraPradesh.fromJson(json["Haryana"]),
        uttarPradesh: json["Uttar Pradesh"] == null
            ? null
            : AndhraPradesh.fromJson(json["Uttar Pradesh"]),
        ladakh: json["Ladakh"] == null ? null : Ladakh.fromJson(json["Ladakh"]),
        tamilNadu: json["Tamil Nadu"] == null
            ? null
            : AndhraPradesh.fromJson(json["Tamil Nadu"]),
        jammuAndKashmir: json["Jammu and Kashmir"] == null
            ? null
            : JammuAndKashmir.fromJson(json["Jammu and Kashmir"]),
        karnataka: json["Karnataka"] == null
            ? null
            : AndhraPradesh.fromJson(json["Karnataka"]),
        maharashtra: json["Maharashtra"] == null
            ? null
            : AndhraPradesh.fromJson(json["Maharashtra"]),
        punjab: json["Punjab"] == null ? null : Punjab.fromJson(json["Punjab"]),
        andhraPradesh: json["Andhra Pradesh"] == null
            ? null
            : AndhraPradesh.fromJson(json["Andhra Pradesh"]),
        uttarakhand: json["Uttarakhand"] == null
            ? null
            : Uttarakhand.fromJson(json["Uttarakhand"]),
        odisha: json["Odisha"] == null ? null : Odisha.fromJson(json["Odisha"]),
        puducherry: json["Puducherry"] == null
            ? null
            : Puducherry.fromJson(json["Puducherry"]),
        westBengal: json["West Bengal"] == null
            ? null
            : WestBengal.fromJson(json["West Bengal"]),
        chandigarh: json["Chandigarh"] == null
            ? null
            : Chandigarh.fromJson(json["Chandigarh"]),
        chhattisgarh: json["Chhattisgarh"] == null
            ? null
            : Chhattisgarh.fromJson(json["Chhattisgarh"]),
        gujarat: json["Gujarat"] == null
            ? null
            : AndhraPradesh.fromJson(json["Gujarat"]),
        himachalPradesh: json["Himachal Pradesh"] == null
            ? null
            : HimachalPradesh.fromJson(json["Himachal Pradesh"]),
        madhyaPradesh: json["Madhya Pradesh"] == null
            ? null
            : MadhyaPradesh.fromJson(json["Madhya Pradesh"]),
        bihar: json["Bihar"] == null
            ? null
            : AndhraPradesh.fromJson(json["Bihar"]),
        manipur:
            json["Manipur"] == null ? null : Manipur.fromJson(json["Manipur"]),
        mizoram:
            json["Mizoram"] == null ? null : Mizoram.fromJson(json["Mizoram"]),
        goa: json["Goa"] == null ? null : Goa.fromJson(json["Goa"]),
        andamanAndNicobarIslands: json["Andaman and Nicobar Islands"] == null
            ? null
            : AndamanAndNicobarIslands.fromJson(
                json["Andaman and Nicobar Islands"]),
        jharkhand: json["Jharkhand"] == null
            ? null
            : Jharkhand.fromJson(json["Jharkhand"]),
        assam: json["Assam"] == null ? null : Assam.fromJson(json["Assam"]),
        arunachalPradesh: json["Arunachal Pradesh"] == null
            ? null
            : ArunachalPradesh.fromJson(json["Arunachal Pradesh"]),
      );

  Map<String, dynamic> toJson() => {
        "Kerala": kerala == null ? null : kerala.toJson(),
        "Delhi": delhi == null ? null : delhi.toJson(),
        "Telangana": telangana == null ? null : telangana.toJson(),
        "Rajasthan": rajasthan == null ? null : rajasthan.toJson(),
        "Haryana": haryana == null ? null : haryana.toJson(),
        "Uttar Pradesh": uttarPradesh == null ? null : uttarPradesh.toJson(),
        "Ladakh": ladakh == null ? null : ladakh.toJson(),
        "Tamil Nadu": tamilNadu == null ? null : tamilNadu.toJson(),
        "Jammu and Kashmir":
            jammuAndKashmir == null ? null : jammuAndKashmir.toJson(),
        "Karnataka": karnataka == null ? null : karnataka.toJson(),
        "Maharashtra": maharashtra == null ? null : maharashtra.toJson(),
        "Punjab": punjab == null ? null : punjab.toJson(),
        "Andhra Pradesh": andhraPradesh == null ? null : andhraPradesh.toJson(),
        "Uttarakhand": uttarakhand == null ? null : uttarakhand.toJson(),
        "Odisha": odisha == null ? null : odisha.toJson(),
        "Puducherry": puducherry == null ? null : puducherry.toJson(),
        "West Bengal": westBengal == null ? null : westBengal.toJson(),
        "Chandigarh": chandigarh == null ? null : chandigarh.toJson(),
        "Chhattisgarh": chhattisgarh == null ? null : chhattisgarh.toJson(),
        "Gujarat": gujarat == null ? null : gujarat.toJson(),
        "Himachal Pradesh":
            himachalPradesh == null ? null : himachalPradesh.toJson(),
        "Madhya Pradesh": madhyaPradesh == null ? null : madhyaPradesh.toJson(),
        "Bihar": bihar == null ? null : bihar.toJson(),
        "Manipur": manipur == null ? null : manipur.toJson(),
        "Mizoram": mizoram == null ? null : mizoram.toJson(),
        "Goa": goa == null ? null : goa.toJson(),
        "Andaman and Nicobar Islands": andamanAndNicobarIslands == null
            ? null
            : andamanAndNicobarIslands.toJson(),
        "Jharkhand": jharkhand == null ? null : jharkhand.toJson(),
        "Assam": assam == null ? null : assam.toJson(),
        "Arunachal Pradesh":
            arunachalPradesh == null ? null : arunachalPradesh.toJson(),
      };
}

class AndamanAndNicobarIslands {
  AndamanAndNicobarIslandsDistrictData districtData;

  AndamanAndNicobarIslands({
    this.districtData,
  });

  factory AndamanAndNicobarIslands.fromJson(Map<String, dynamic> json) =>
      AndamanAndNicobarIslands(
        districtData: json["districtData"] == null
            ? null
            : AndamanAndNicobarIslandsDistrictData.fromJson(
                json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class AndamanAndNicobarIslandsDistrictData {
  DistrictDatum southAndaman;
  DistrictDatum northAndMiddleAndaman;
  DistrictDatum unknown;

  AndamanAndNicobarIslandsDistrictData({
    this.southAndaman,
    this.northAndMiddleAndaman,
    this.unknown,
  });

  factory AndamanAndNicobarIslandsDistrictData.fromJson(
          Map<String, dynamic> json) =>
      AndamanAndNicobarIslandsDistrictData(
        southAndaman: json["South Andaman"] == null
            ? null
            : DistrictDatum.fromJson(json["South Andaman"]),
        northAndMiddleAndaman: json["North and Middle Andaman"] == null
            ? null
            : DistrictDatum.fromJson(json["North and Middle Andaman"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "South Andaman": southAndaman == null ? null : southAndaman.toJson(),
        "North and Middle Andaman": northAndMiddleAndaman == null
            ? null
            : northAndMiddleAndaman.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
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

class AndhraPradesh {
  Map<String, DistrictDatum> districtData;

  AndhraPradesh({
    this.districtData,
  });

  factory AndhraPradesh.fromJson(Map<String, dynamic> json) => AndhraPradesh(
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

class ArunachalPradesh {
  ArunachalPradeshDistrictData districtData;

  ArunachalPradesh({
    this.districtData,
  });

  factory ArunachalPradesh.fromJson(Map<String, dynamic> json) =>
      ArunachalPradesh(
        districtData: json["districtData"] == null
            ? null
            : ArunachalPradeshDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class ArunachalPradeshDistrictData {
  DistrictDatum unknown;

  ArunachalPradeshDistrictData({
    this.unknown,
  });

  factory ArunachalPradeshDistrictData.fromJson(Map<String, dynamic> json) =>
      ArunachalPradeshDistrictData(
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}

class Assam {
  AssamDistrictData districtData;

  Assam({
    this.districtData,
  });

  factory Assam.fromJson(Map<String, dynamic> json) => Assam(
        districtData: json["districtData"] == null
            ? null
            : AssamDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class AssamDistrictData {
  DistrictDatum cachar;
  DistrictDatum kamrupMetropolitan;
  DistrictDatum jorhat;
  DistrictDatum goalpara;

  AssamDistrictData({
    this.cachar,
    this.kamrupMetropolitan,
    this.jorhat,
    this.goalpara,
  });

  factory AssamDistrictData.fromJson(Map<String, dynamic> json) =>
      AssamDistrictData(
        cachar: json["Cachar"] == null
            ? null
            : DistrictDatum.fromJson(json["Cachar"]),
        kamrupMetropolitan: json["Kamrup Metropolitan"] == null
            ? null
            : DistrictDatum.fromJson(json["Kamrup Metropolitan"]),
        jorhat: json["Jorhat"] == null
            ? null
            : DistrictDatum.fromJson(json["Jorhat"]),
        goalpara: json["Goalpara"] == null
            ? null
            : DistrictDatum.fromJson(json["Goalpara"]),
      );

  Map<String, dynamic> toJson() => {
        "Cachar": cachar == null ? null : cachar.toJson(),
        "Kamrup Metropolitan":
            kamrupMetropolitan == null ? null : kamrupMetropolitan.toJson(),
        "Jorhat": jorhat == null ? null : jorhat.toJson(),
        "Goalpara": goalpara == null ? null : goalpara.toJson(),
      };
}

class Chandigarh {
  ChandigarhDistrictData districtData;

  Chandigarh({
    this.districtData,
  });

  factory Chandigarh.fromJson(Map<String, dynamic> json) => Chandigarh(
        districtData: json["districtData"] == null
            ? null
            : ChandigarhDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class ChandigarhDistrictData {
  DistrictDatum chandigarh;
  DistrictDatum unknown;

  ChandigarhDistrictData({
    this.chandigarh,
    this.unknown,
  });

  factory ChandigarhDistrictData.fromJson(Map<String, dynamic> json) =>
      ChandigarhDistrictData(
        chandigarh: json["Chandigarh"] == null
            ? null
            : DistrictDatum.fromJson(json["Chandigarh"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Chandigarh": chandigarh == null ? null : chandigarh.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}

class Chhattisgarh {
  ChhattisgarhDistrictData districtData;

  Chhattisgarh({
    this.districtData,
  });

  factory Chhattisgarh.fromJson(Map<String, dynamic> json) => Chhattisgarh(
        districtData: json["districtData"] == null
            ? null
            : ChhattisgarhDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class ChhattisgarhDistrictData {
  DistrictDatum raipur;
  DistrictDatum rajnandgaon;
  DistrictDatum bilaspur;
  DistrictDatum durg;
  DistrictDatum korba;
  DistrictDatum unknown;

  ChhattisgarhDistrictData({
    this.raipur,
    this.rajnandgaon,
    this.bilaspur,
    this.durg,
    this.korba,
    this.unknown,
  });

  factory ChhattisgarhDistrictData.fromJson(Map<String, dynamic> json) =>
      ChhattisgarhDistrictData(
        raipur: json["Raipur"] == null
            ? null
            : DistrictDatum.fromJson(json["Raipur"]),
        rajnandgaon: json["Rajnandgaon"] == null
            ? null
            : DistrictDatum.fromJson(json["Rajnandgaon"]),
        bilaspur: json["Bilaspur"] == null
            ? null
            : DistrictDatum.fromJson(json["Bilaspur"]),
        durg:
            json["Durg"] == null ? null : DistrictDatum.fromJson(json["Durg"]),
        korba: json["Korba"] == null
            ? null
            : DistrictDatum.fromJson(json["Korba"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Raipur": raipur == null ? null : raipur.toJson(),
        "Rajnandgaon": rajnandgaon == null ? null : rajnandgaon.toJson(),
        "Bilaspur": bilaspur == null ? null : bilaspur.toJson(),
        "Durg": durg == null ? null : durg.toJson(),
        "Korba": korba == null ? null : korba.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}

class Delhi {
  DelhiDistrictData districtData;

  Delhi({
    this.districtData,
  });

  factory Delhi.fromJson(Map<String, dynamic> json) => Delhi(
        districtData: json["districtData"] == null
            ? null
            : DelhiDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class DelhiDistrictData {
  DistrictDatum eastDelhi;
  DistrictDatum southWestDelhi;
  DistrictDatum westDelhi;
  DistrictDatum northDelhi;
  DistrictDatum newDelhi;
  DistrictDatum southDelhi;
  DistrictDatum northEastDelhi;
  DistrictDatum northWestDelhi;
  DistrictDatum unknown;

  DelhiDistrictData({
    this.eastDelhi,
    this.southWestDelhi,
    this.westDelhi,
    this.northDelhi,
    this.newDelhi,
    this.southDelhi,
    this.northEastDelhi,
    this.northWestDelhi,
    this.unknown,
  });

  factory DelhiDistrictData.fromJson(Map<String, dynamic> json) =>
      DelhiDistrictData(
        eastDelhi: json["East Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["East Delhi"]),
        southWestDelhi: json["South West Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["South West Delhi"]),
        westDelhi: json["West Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["West Delhi"]),
        northDelhi: json["North Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["North Delhi"]),
        newDelhi: json["New Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["New Delhi"]),
        southDelhi: json["South Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["South Delhi"]),
        northEastDelhi: json["North East Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["North East Delhi"]),
        northWestDelhi: json["North West Delhi"] == null
            ? null
            : DistrictDatum.fromJson(json["North West Delhi"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "East Delhi": eastDelhi == null ? null : eastDelhi.toJson(),
        "South West Delhi":
            southWestDelhi == null ? null : southWestDelhi.toJson(),
        "West Delhi": westDelhi == null ? null : westDelhi.toJson(),
        "North Delhi": northDelhi == null ? null : northDelhi.toJson(),
        "New Delhi": newDelhi == null ? null : newDelhi.toJson(),
        "South Delhi": southDelhi == null ? null : southDelhi.toJson(),
        "North East Delhi":
            northEastDelhi == null ? null : northEastDelhi.toJson(),
        "North West Delhi":
            northWestDelhi == null ? null : northWestDelhi.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}

class Goa {
  GoaDistrictData districtData;

  Goa({
    this.districtData,
  });

  factory Goa.fromJson(Map<String, dynamic> json) => Goa(
        districtData: json["districtData"] == null
            ? null
            : GoaDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class GoaDistrictData {
  DistrictDatum northGoa;
  DistrictDatum unknown;

  GoaDistrictData({
    this.northGoa,
    this.unknown,
  });

  factory GoaDistrictData.fromJson(Map<String, dynamic> json) =>
      GoaDistrictData(
        northGoa: json["North Goa"] == null
            ? null
            : DistrictDatum.fromJson(json["North Goa"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "North Goa": northGoa == null ? null : northGoa.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}

class HimachalPradesh {
  HimachalPradeshDistrictData districtData;

  HimachalPradesh({
    this.districtData,
  });

  factory HimachalPradesh.fromJson(Map<String, dynamic> json) =>
      HimachalPradesh(
        districtData: json["districtData"] == null
            ? null
            : HimachalPradeshDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class HimachalPradeshDistrictData {
  DistrictDatum kangra;

  HimachalPradeshDistrictData({
    this.kangra,
  });

  factory HimachalPradeshDistrictData.fromJson(Map<String, dynamic> json) =>
      HimachalPradeshDistrictData(
        kangra: json["Kangra"] == null
            ? null
            : DistrictDatum.fromJson(json["Kangra"]),
      );

  Map<String, dynamic> toJson() => {
        "Kangra": kangra == null ? null : kangra.toJson(),
      };
}

class JammuAndKashmir {
  JammuAndKashmirDistrictData districtData;

  JammuAndKashmir({
    this.districtData,
  });

  factory JammuAndKashmir.fromJson(Map<String, dynamic> json) =>
      JammuAndKashmir(
        districtData: json["districtData"] == null
            ? null
            : JammuAndKashmirDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class JammuAndKashmirDistrictData {
  DistrictDatum jammu;
  DistrictDatum srinagar;
  DistrictDatum bandipore;
  DistrictDatum unknown;
  DistrictDatum rajouri;
  DistrictDatum badgam;
  DistrictDatum baramula;
  DistrictDatum shopian;

  JammuAndKashmirDistrictData({
    this.jammu,
    this.srinagar,
    this.bandipore,
    this.unknown,
    this.rajouri,
    this.badgam,
    this.baramula,
    this.shopian,
  });

  factory JammuAndKashmirDistrictData.fromJson(Map<String, dynamic> json) =>
      JammuAndKashmirDistrictData(
        jammu: json["Jammu"] == null
            ? null
            : DistrictDatum.fromJson(json["Jammu"]),
        srinagar: json["Srinagar"] == null
            ? null
            : DistrictDatum.fromJson(json["Srinagar"]),
        bandipore: json["Bandipore"] == null
            ? null
            : DistrictDatum.fromJson(json["Bandipore"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
        rajouri: json["Rajouri"] == null
            ? null
            : DistrictDatum.fromJson(json["Rajouri"]),
        badgam: json["Badgam"] == null
            ? null
            : DistrictDatum.fromJson(json["Badgam"]),
        baramula: json["Baramula"] == null
            ? null
            : DistrictDatum.fromJson(json["Baramula"]),
        shopian: json["Shopian"] == null
            ? null
            : DistrictDatum.fromJson(json["Shopian"]),
      );

  Map<String, dynamic> toJson() => {
        "Jammu": jammu == null ? null : jammu.toJson(),
        "Srinagar": srinagar == null ? null : srinagar.toJson(),
        "Bandipore": bandipore == null ? null : bandipore.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
        "Rajouri": rajouri == null ? null : rajouri.toJson(),
        "Badgam": badgam == null ? null : badgam.toJson(),
        "Baramula": baramula == null ? null : baramula.toJson(),
        "Shopian": shopian == null ? null : shopian.toJson(),
      };
}

class Jharkhand {
  JharkhandDistrictData districtData;

  Jharkhand({
    this.districtData,
  });

  factory Jharkhand.fromJson(Map<String, dynamic> json) => Jharkhand(
        districtData: json["districtData"] == null
            ? null
            : JharkhandDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class JharkhandDistrictData {
  DistrictDatum ranchi;
  DistrictDatum hazaribagh;

  JharkhandDistrictData({
    this.ranchi,
    this.hazaribagh,
  });

  factory JharkhandDistrictData.fromJson(Map<String, dynamic> json) =>
      JharkhandDistrictData(
        ranchi: json["Ranchi"] == null
            ? null
            : DistrictDatum.fromJson(json["Ranchi"]),
        hazaribagh: json["Hazaribagh"] == null
            ? null
            : DistrictDatum.fromJson(json["Hazaribagh"]),
      );

  Map<String, dynamic> toJson() => {
        "Ranchi": ranchi == null ? null : ranchi.toJson(),
        "Hazaribagh": hazaribagh == null ? null : hazaribagh.toJson(),
      };
}

class Ladakh {
  LadakhDistrictData districtData;

  Ladakh({
    this.districtData,
  });

  factory Ladakh.fromJson(Map<String, dynamic> json) => Ladakh(
        districtData: json["districtData"] == null
            ? null
            : LadakhDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class LadakhDistrictData {
  DistrictDatum leh;
  DistrictDatum kargil;

  LadakhDistrictData({
    this.leh,
    this.kargil,
  });

  factory LadakhDistrictData.fromJson(Map<String, dynamic> json) =>
      LadakhDistrictData(
        leh: json["Leh"] == null ? null : DistrictDatum.fromJson(json["Leh"]),
        kargil: json["Kargil"] == null
            ? null
            : DistrictDatum.fromJson(json["Kargil"]),
      );

  Map<String, dynamic> toJson() => {
        "Leh": leh == null ? null : leh.toJson(),
        "Kargil": kargil == null ? null : kargil.toJson(),
      };
}

class MadhyaPradesh {
  MadhyaPradeshDistrictData districtData;

  MadhyaPradesh({
    this.districtData,
  });

  factory MadhyaPradesh.fromJson(Map<String, dynamic> json) => MadhyaPradesh(
        districtData: json["districtData"] == null
            ? null
            : MadhyaPradeshDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class MadhyaPradeshDistrictData {
  DistrictDatum jabalpur;
  DistrictDatum bhopal;
  DistrictDatum indore;
  DistrictDatum ujjain;
  DistrictDatum gwalior;
  DistrictDatum shivpuri;
  DistrictDatum unknown;
  DistrictDatum morena;

  MadhyaPradeshDistrictData({
    this.jabalpur,
    this.bhopal,
    this.indore,
    this.ujjain,
    this.gwalior,
    this.shivpuri,
    this.unknown,
    this.morena,
  });

  factory MadhyaPradeshDistrictData.fromJson(Map<String, dynamic> json) =>
      MadhyaPradeshDistrictData(
        jabalpur: json["Jabalpur"] == null
            ? null
            : DistrictDatum.fromJson(json["Jabalpur"]),
        bhopal: json["Bhopal"] == null
            ? null
            : DistrictDatum.fromJson(json["Bhopal"]),
        indore: json["Indore"] == null
            ? null
            : DistrictDatum.fromJson(json["Indore"]),
        ujjain: json["Ujjain"] == null
            ? null
            : DistrictDatum.fromJson(json["Ujjain"]),
        gwalior: json["Gwalior"] == null
            ? null
            : DistrictDatum.fromJson(json["Gwalior"]),
        shivpuri: json["Shivpuri"] == null
            ? null
            : DistrictDatum.fromJson(json["Shivpuri"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
        morena: json["Morena"] == null
            ? null
            : DistrictDatum.fromJson(json["Morena"]),
      );

  Map<String, dynamic> toJson() => {
        "Jabalpur": jabalpur == null ? null : jabalpur.toJson(),
        "Bhopal": bhopal == null ? null : bhopal.toJson(),
        "Indore": indore == null ? null : indore.toJson(),
        "Ujjain": ujjain == null ? null : ujjain.toJson(),
        "Gwalior": gwalior == null ? null : gwalior.toJson(),
        "Shivpuri": shivpuri == null ? null : shivpuri.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
        "Morena": morena == null ? null : morena.toJson(),
      };
}

class Manipur {
  ManipurDistrictData districtData;

  Manipur({
    this.districtData,
  });

  factory Manipur.fromJson(Map<String, dynamic> json) => Manipur(
        districtData: json["districtData"] == null
            ? null
            : ManipurDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class ManipurDistrictData {
  DistrictDatum imphalWest;
  DistrictDatum unknown;

  ManipurDistrictData({
    this.imphalWest,
    this.unknown,
  });

  factory ManipurDistrictData.fromJson(Map<String, dynamic> json) =>
      ManipurDistrictData(
        imphalWest: json["Imphal West"] == null
            ? null
            : DistrictDatum.fromJson(json["Imphal West"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Imphal West": imphalWest == null ? null : imphalWest.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}

class Mizoram {
  MizoramDistrictData districtData;

  Mizoram({
    this.districtData,
  });

  factory Mizoram.fromJson(Map<String, dynamic> json) => Mizoram(
        districtData: json["districtData"] == null
            ? null
            : MizoramDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class MizoramDistrictData {
  DistrictDatum aizawl;

  MizoramDistrictData({
    this.aizawl,
  });

  factory MizoramDistrictData.fromJson(Map<String, dynamic> json) =>
      MizoramDistrictData(
        aizawl: json["Aizawl"] == null
            ? null
            : DistrictDatum.fromJson(json["Aizawl"]),
      );

  Map<String, dynamic> toJson() => {
        "Aizawl": aizawl == null ? null : aizawl.toJson(),
      };
}

class Odisha {
  OdishaDistrictData districtData;

  Odisha({
    this.districtData,
  });

  factory Odisha.fromJson(Map<String, dynamic> json) => Odisha(
        districtData: json["districtData"] == null
            ? null
            : OdishaDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class OdishaDistrictData {
  DistrictDatum khordha;
  DistrictDatum bhadrak;

  OdishaDistrictData({
    this.khordha,
    this.bhadrak,
  });

  factory OdishaDistrictData.fromJson(Map<String, dynamic> json) =>
      OdishaDistrictData(
        khordha: json["Khordha"] == null
            ? null
            : DistrictDatum.fromJson(json["Khordha"]),
        bhadrak: json["Bhadrak"] == null
            ? null
            : DistrictDatum.fromJson(json["Bhadrak"]),
      );

  Map<String, dynamic> toJson() => {
        "Khordha": khordha == null ? null : khordha.toJson(),
        "Bhadrak": bhadrak == null ? null : bhadrak.toJson(),
      };
}

class Puducherry {
  PuducherryDistrictData districtData;

  Puducherry({
    this.districtData,
  });

  factory Puducherry.fromJson(Map<String, dynamic> json) => Puducherry(
        districtData: json["districtData"] == null
            ? null
            : PuducherryDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class PuducherryDistrictData {
  DistrictDatum mahe;
  DistrictDatum puducherry;

  PuducherryDistrictData({
    this.mahe,
    this.puducherry,
  });

  factory PuducherryDistrictData.fromJson(Map<String, dynamic> json) =>
      PuducherryDistrictData(
        mahe:
            json["Mahe"] == null ? null : DistrictDatum.fromJson(json["Mahe"]),
        puducherry: json["Puducherry"] == null
            ? null
            : DistrictDatum.fromJson(json["Puducherry"]),
      );

  Map<String, dynamic> toJson() => {
        "Mahe": mahe == null ? null : mahe.toJson(),
        "Puducherry": puducherry == null ? null : puducherry.toJson(),
      };
}

class Punjab {
  PunjabDistrictData districtData;

  Punjab({
    this.districtData,
  });

  factory Punjab.fromJson(Map<String, dynamic> json) => Punjab(
        districtData: json["districtData"] == null
            ? null
            : PunjabDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class PunjabDistrictData {
  DistrictDatum amritsar;
  DistrictDatum shahidBhagatSinghNagar;
  DistrictDatum sASNagar;
  DistrictDatum hoshiarpur;
  DistrictDatum jalandhar;
  DistrictDatum unknown;
  DistrictDatum ludhiana;

  PunjabDistrictData({
    this.amritsar,
    this.shahidBhagatSinghNagar,
    this.sASNagar,
    this.hoshiarpur,
    this.jalandhar,
    this.unknown,
    this.ludhiana,
  });

  factory PunjabDistrictData.fromJson(Map<String, dynamic> json) =>
      PunjabDistrictData(
        amritsar: json["Amritsar"] == null
            ? null
            : DistrictDatum.fromJson(json["Amritsar"]),
        shahidBhagatSinghNagar: json["Shahid Bhagat Singh Nagar"] == null
            ? null
            : DistrictDatum.fromJson(json["Shahid Bhagat Singh Nagar"]),
        sASNagar: json["S.A.S. Nagar"] == null
            ? null
            : DistrictDatum.fromJson(json["S.A.S. Nagar"]),
        hoshiarpur: json["Hoshiarpur"] == null
            ? null
            : DistrictDatum.fromJson(json["Hoshiarpur"]),
        jalandhar: json["Jalandhar"] == null
            ? null
            : DistrictDatum.fromJson(json["Jalandhar"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
        ludhiana: json["Ludhiana"] == null
            ? null
            : DistrictDatum.fromJson(json["Ludhiana"]),
      );

  Map<String, dynamic> toJson() => {
        "Amritsar": amritsar == null ? null : amritsar.toJson(),
        "Shahid Bhagat Singh Nagar": shahidBhagatSinghNagar == null
            ? null
            : shahidBhagatSinghNagar.toJson(),
        "S.A.S. Nagar": sASNagar == null ? null : sASNagar.toJson(),
        "Hoshiarpur": hoshiarpur == null ? null : hoshiarpur.toJson(),
        "Jalandhar": jalandhar == null ? null : jalandhar.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
        "Ludhiana": ludhiana == null ? null : ludhiana.toJson(),
      };
}

class Telangana {
  TelanganaDistrictData districtData;

  Telangana({
    this.districtData,
  });

  factory Telangana.fromJson(Map<String, dynamic> json) => Telangana(
        districtData: json["districtData"] == null
            ? null
            : TelanganaDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class TelanganaDistrictData {
  DistrictDatum hyderabad;
  DistrictDatum karimnagar;
  DistrictDatum bhadradriKothagudem;
  DistrictDatum rangaReddy;
  DistrictDatum medchalMalkajgiri;
  DistrictDatum unknown;

  TelanganaDistrictData({
    this.hyderabad,
    this.karimnagar,
    this.bhadradriKothagudem,
    this.rangaReddy,
    this.medchalMalkajgiri,
    this.unknown,
  });

  factory TelanganaDistrictData.fromJson(Map<String, dynamic> json) =>
      TelanganaDistrictData(
        hyderabad: json["Hyderabad"] == null
            ? null
            : DistrictDatum.fromJson(json["Hyderabad"]),
        karimnagar: json["Karimnagar"] == null
            ? null
            : DistrictDatum.fromJson(json["Karimnagar"]),
        bhadradriKothagudem: json["Bhadradri Kothagudem"] == null
            ? null
            : DistrictDatum.fromJson(json["Bhadradri Kothagudem"]),
        rangaReddy: json["Ranga Reddy"] == null
            ? null
            : DistrictDatum.fromJson(json["Ranga Reddy"]),
        medchalMalkajgiri: json["Medchal Malkajgiri"] == null
            ? null
            : DistrictDatum.fromJson(json["Medchal Malkajgiri"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Hyderabad": hyderabad == null ? null : hyderabad.toJson(),
        "Karimnagar": karimnagar == null ? null : karimnagar.toJson(),
        "Bhadradri Kothagudem":
            bhadradriKothagudem == null ? null : bhadradriKothagudem.toJson(),
        "Ranga Reddy": rangaReddy == null ? null : rangaReddy.toJson(),
        "Medchal Malkajgiri":
            medchalMalkajgiri == null ? null : medchalMalkajgiri.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}

class Uttarakhand {
  UttarakhandDistrictData districtData;

  Uttarakhand({
    this.districtData,
  });

  factory Uttarakhand.fromJson(Map<String, dynamic> json) => Uttarakhand(
        districtData: json["districtData"] == null
            ? null
            : UttarakhandDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class UttarakhandDistrictData {
  DistrictDatum dehradun;
  DistrictDatum pauriGarhwal;

  UttarakhandDistrictData({
    this.dehradun,
    this.pauriGarhwal,
  });

  factory UttarakhandDistrictData.fromJson(Map<String, dynamic> json) =>
      UttarakhandDistrictData(
        dehradun: json["Dehradun"] == null
            ? null
            : DistrictDatum.fromJson(json["Dehradun"]),
        pauriGarhwal: json["Pauri Garhwal"] == null
            ? null
            : DistrictDatum.fromJson(json["Pauri Garhwal"]),
      );

  Map<String, dynamic> toJson() => {
        "Dehradun": dehradun == null ? null : dehradun.toJson(),
        "Pauri Garhwal": pauriGarhwal == null ? null : pauriGarhwal.toJson(),
      };
}

class WestBengal {
  WestBengalDistrictData districtData;

  WestBengal({
    this.districtData,
  });

  factory WestBengal.fromJson(Map<String, dynamic> json) => WestBengal(
        districtData: json["districtData"] == null
            ? null
            : WestBengalDistrictData.fromJson(json["districtData"]),
      );

  Map<String, dynamic> toJson() => {
        "districtData": districtData == null ? null : districtData.toJson(),
      };
}

class WestBengalDistrictData {
  DistrictDatum kolkata;
  DistrictDatum north24Parganas;
  DistrictDatum nadia;
  DistrictDatum medinipurEast;
  DistrictDatum kalimpong;
  DistrictDatum hooghly;
  DistrictDatum howrah;
  DistrictDatum south24Parganas;
  DistrictDatum unknown;

  WestBengalDistrictData({
    this.kolkata,
    this.north24Parganas,
    this.nadia,
    this.medinipurEast,
    this.kalimpong,
    this.hooghly,
    this.howrah,
    this.south24Parganas,
    this.unknown,
  });

  factory WestBengalDistrictData.fromJson(Map<String, dynamic> json) =>
      WestBengalDistrictData(
        kolkata: json["Kolkata"] == null
            ? null
            : DistrictDatum.fromJson(json["Kolkata"]),
        north24Parganas: json["North 24 Parganas"] == null
            ? null
            : DistrictDatum.fromJson(json["North 24 Parganas"]),
        nadia: json["Nadia"] == null
            ? null
            : DistrictDatum.fromJson(json["Nadia"]),
        medinipurEast: json["Medinipur East"] == null
            ? null
            : DistrictDatum.fromJson(json["Medinipur East"]),
        kalimpong: json["Kalimpong"] == null
            ? null
            : DistrictDatum.fromJson(json["Kalimpong"]),
        hooghly: json["Hooghly"] == null
            ? null
            : DistrictDatum.fromJson(json["Hooghly"]),
        howrah: json["Howrah"] == null
            ? null
            : DistrictDatum.fromJson(json["Howrah"]),
        south24Parganas: json["South 24 Parganas"] == null
            ? null
            : DistrictDatum.fromJson(json["South 24 Parganas"]),
        unknown: json["Unknown"] == null
            ? null
            : DistrictDatum.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Kolkata": kolkata == null ? null : kolkata.toJson(),
        "North 24 Parganas":
            north24Parganas == null ? null : north24Parganas.toJson(),
        "Nadia": nadia == null ? null : nadia.toJson(),
        "Medinipur East": medinipurEast == null ? null : medinipurEast.toJson(),
        "Kalimpong": kalimpong == null ? null : kalimpong.toJson(),
        "Hooghly": hooghly == null ? null : hooghly.toJson(),
        "Howrah": howrah == null ? null : howrah.toJson(),
        "South 24 Parganas":
            south24Parganas == null ? null : south24Parganas.toJson(),
        "Unknown": unknown == null ? null : unknown.toJson(),
      };
}
