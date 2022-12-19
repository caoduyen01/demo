// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class User {
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    // required this.address,
    required this.phone,
    required this.website,
    // required this.company,
  });

  int id;
  String name;
  String username;
  String email;
  // Address address;
  String phone;
  String website;
  // Company company;

  User copyWith({
    required int id,
    required String name,
    required String username,
    required String email,
    // required Address address,
    required String phone,
    required String website,
    // required Company company,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        // address: address ?? this.address,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        // company: company ?? this.company,
      );

  // factory User.fromJson(String str) => User.fromJson(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
    id: json["id"]!,
    name: json["name"]!,
    username: json["username"]!,
    email: json["email"]!,
    // address: Address.fromJson(json["address"]!),
    phone: json["phone"]!,
    website: json["website"]!,
    // company: Company.fromMap(json["company"]!),
  );

  static List<User> toListUser(String body){
    return List<User>.from(
        json.decode(body).map((data) => User.fromMap(data))
    );
  }

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "username": username == null ? null : username,
    "email": email == null ? null : email,
    // "address": address == null ? null : address.toMap(),
    "phone": phone == null ? null : phone,
    "website": website == null ? null : website,
    // "company": company == null ? null : company.toMap(),
  };
}
//
// class Address {
//   Address({
//     required this.street,
//     required this.suite,
//     required this.city,
//     required this.zipcode,
//     required this.geo,
//   });
//
//   String street;
//   String suite;
//   String city;
//   String zipcode;
//   Geo geo;
//
//   Address copyWith({
//     required String street,
//     required String suite,
//     required String city,
//     required String zipcode,
//     required Geo geo,
//   }) =>
//       Address(
//         street: street ?? this.street,
//         suite: suite ?? this.suite,
//         city: city ?? this.city,
//         zipcode: zipcode ?? this.zipcode,
//         geo: geo ?? this.geo,
//       );
//
//   factory Address.fromJson(String str) => Address.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory Address.fromMap(Map<String, dynamic> json) => Address(
//     street: json["street"] == null ? null : json["street"],
//     suite: json["suite"] == null ? null : json["suite"],
//     city: json["city"] == null ? null : json["city"],
//     zipcode: json["zipcode"] == null ? null : json["zipcode"],
//     geo: Geo.fromMap(json["geo"]),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "street": street == null ? null : street,
//     "suite": suite == null ? null : suite,
//     "city": city == null ? null : city,
//     "zipcode": zipcode == null ? null : zipcode,
//     "geo": geo == null ? null : geo.toMap(),
//   };
// }
//
// class Geo {
//   Geo({
//     required this.lat,
//     required this.lng,
//   });
//
//   String lat;
//   String lng;
//
//   Geo copyWith({
//     required String lat,
//     required String lng,
//   }) =>
//       Geo(
//         lat: lat ?? this.lat,
//         lng: lng ?? this.lng,
//       );
//
//   factory Geo.fromJson(String str) => Geo.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory Geo.fromMap(Map<String, dynamic> json) => Geo(
//     lat: json["lat"] == null ? null : json["lat"],
//     lng: json["lng"] == null ? null : json["lng"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "lat": lat == null ? null : lat,
//     "lng": lng == null ? null : lng,
//   };
// }
//
// class Company {
//   Company({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });
//
//   String name;
//   String catchPhrase;
//   String bs;
//
//   Company copyWith({
//     required String name,
//     required String catchPhrase,
//     required String bs,
//   }) =>
//       Company(
//         name: name ?? this.name,
//         catchPhrase: catchPhrase ?? this.catchPhrase,
//         bs: bs ?? this.bs,
//       );
//
//   factory Company.fromJson(String str) => Company.fromMap(json.decode(str));
//
//   String toJson() => json.encode(toMap());
//
//   factory Company.fromMap(Map<String, dynamic> json) => Company(
//     name: json["name"] == null ? null : json["name"],
//     catchPhrase: json["catchPhrase"] == null ? null : json["catchPhrase"],
//     bs: json["bs"] == null ? null : json["bs"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "name": name == null ? null : name,
//     "catchPhrase": catchPhrase == null ? null : catchPhrase,
//     "bs": bs == null ? null : bs,
//   };
// }
