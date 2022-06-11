// To parse this JSON data, do
//
//     final requestModel = requestModelFromJson(jsonString);

import 'dart:convert';

List<RequestModel> requestModelFromJson(String str) => List<RequestModel>.from(
    json.decode(str).map((x) => RequestModel.fromJson(x)));

String requestModelToJson(List<RequestModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RequestModel {
  RequestModel({
    required this.url,
    required this.id,
    required this.name,
    required this.email,
    required this.seatsavailable,
    required this.fromgeo,
    required this.togeo,
    required this.city,
    required this.phone,
  });

  String url;
  int id;
  String name;
  String email;
  int seatsavailable;
  Geo fromgeo;
  Geo togeo;
  String city;
  int phone;

  factory RequestModel.fromJson(Map<String, dynamic> json) => RequestModel(
        url: json["url"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        seatsavailable: json["seatsavailable"],
        fromgeo: Geo.fromJson(json["fromgeo"]),
        togeo: Geo.fromJson(json["togeo"]),
        city: json["city"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "id": id,
        "name": name,
        "email": email,
        "seatsavailable": seatsavailable,
        "fromgeo": fromgeo.toJson(),
        "togeo": togeo.toJson(),
        "city": city,
        "phone": phone,
      };
}

class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });

  String lat;
  String lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}
