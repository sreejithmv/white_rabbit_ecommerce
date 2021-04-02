// class Dashboard {
//   int order;
//   int controlId;
//   String control;
//   List<String> images;
//   String productTag;

//   Dashboard(
//       {this.order, this.control, this.controlId, this.images, this.productTag});

//   Dashboard.fromJson(Map<String, dynamic> json) {
//     order = json['order'];
//     controlId = json['controlId'];
//     control = json['control'];
//     images = getImageList(json['images']);
//     productTag = json['productTag'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['order'] = this.order;
//     data['controlId'] = this.controlId;
//     data['control'] = this.control;
//     data['imageList'] = this.images;
//     data['productTag'] = this.productTag;
//     return data;
//   }

//   List<String> getImageList(List<dynamic> parsedJson) {
//     return parsedJson == null ? List.from(parsedJson) : [];
//   }

//   // final dashboard = dashboardFromMap(jsonString);

// List<Dashboard> dashboardFromMap(String str) => List<Dashboard>.from(json.decode(str).map((x) => Dashboard.fromMap(x)));

// String dashboardToMap(List<Dashboard> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));
// }

// To parse this JSON data, do
//
// final dashboard = dashboardFromMap(jsonString);

import 'dart:convert';

class Dashboard {
  Dashboard({
    this.order,
    this.controlId,
    this.control,
    this.images,
    this.productTag,
  });

  int order;
  int controlId;
  String control;
  List<String> images;
  dynamic productTag;

  factory Dashboard.fromMap(Map<String, dynamic> json) => Dashboard(
        order: json["order"] == null ? null : json["order"],
        controlId: json["controlId"] == null ? null : json["controlId"],
        control: json["control"] == null ? null : json["control"],
        images: json["images"] == null
            ? null
            : List<String>.from(json["images"].map((x) => x)),
        productTag: json["productTag"],
      );

  Map<String, dynamic> toMap() => {
        "order": order == null ? null : order,
        "controlId": controlId == null ? null : controlId,
        "control": control == null ? null : control,
        "images":
            images == null ? null : List<dynamic>.from(images.map((x) => x)),
        "productTag": productTag,
      };

  List<Dashboard> dashboardFromMap(String str) =>
      List<Dashboard>.from(json.decode(str).map((x) => Dashboard.fromMap(x)));

  String dashboardToMap(List<Dashboard> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toMap())));
}
