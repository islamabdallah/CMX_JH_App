// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.mobile,
    this.shipmentId,
    this.country,
    this.supportNo,
    this.company,
    this.destination
  });

  String mobile;
  String shipmentId;
  String country;
  String supportNo;
  String company;
  String destination;

  UserModel copyWith({
    String mobile,
    String shipmentId,
    String country,
    String supportNo,
    String company,
    String destination,
  }) =>
      UserModel(
        mobile: mobile ?? this.mobile,
        shipmentId: shipmentId ?? this.shipmentId,
        country: country ?? this.country,
        supportNo: supportNo ?? this.supportNo,
        company: company ?? this.company,
        destination: destination ?? this.destination,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    mobile: json["mobile"] == null ? null : json["mobile"],
    shipmentId: json["shipmentId"] == null ? null : json["shipmentId"],
    country:  json["country"] == null ? null : json["country"],
    supportNo: json["supportNo"] == null ? null : json["supportNo"],
    company: json["company"] == null ? null : json["company"],
    destination: json["destination"] == null ? null : json["destination"],
  );

  Map<String, dynamic> toJson() => {
    "mobile": mobile == null ? null : mobile,
    "shipmentId": shipmentId == null ? null : shipmentId,
    "country": country == null ? null : country,
    "supportNo": supportNo == null ? null : supportNo,
    "company": company == null ? null : company,
    "destination": destination == null ? null : destination,
  };
}
