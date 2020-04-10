// To parse this JSON data, do
//
//     final advicesData = advicesDataFromJson(jsonString);

import 'dart:convert';

AdvicesData advicesDataFromJson(String str) =>
    AdvicesData.fromJson(json.decode(str));

String advicesDataToJson(AdvicesData data) => json.encode(data.toJson());

class AdvicesData {
  List<ListElement> list;
  String status;

  AdvicesData({
    this.list,
    this.status,
  });

  factory AdvicesData.fromJson(Map<String, dynamic> json) => AdvicesData(
        list: json["list"] == null
            ? null
            : List<ListElement>.from(
                json["list"].map((x) => ListElement.fromJson(x))),
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "list": list == null
            ? null
            : List<dynamic>.from(list.map((x) => x.toJson())),
        "status": status == null ? null : status,
      };
}

class ListElement {
  String image;
  List<Item> items;
  String title;

  ListElement({
    this.image,
    this.items,
    this.title,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        image: json["image"] == null ? null : json["image"],
        items: json["items"] == null
            ? null
            : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        title: json["title"] == null ? null : json["title"],
      );

  Map<String, dynamic> toJson() => {
        "image": image == null ? null : image,
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "title": title == null ? null : title,
      };
}

class Item {
  String image;
  String title;

  Item({
    this.image,
    this.title,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        image: json["image"] == null ? null : json["image"],
        title: json["title"] == null ? null : json["title"],
      );

  Map<String, dynamic> toJson() => {
        "image": image == null ? null : image,
        "title": title == null ? null : title,
      };
}
