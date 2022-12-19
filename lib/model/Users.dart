import 'package:demo/model/Address.dart';
import 'package:demo/model/Company.dart';

import 'Company.dart';

class Users{
  final String id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  // Users(this.id, this.name, this.username, this.email, this.address, this.phone,
  //     this.website, this.company);
  Users({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  Users.fromMap(Map map)
      : this(
      id : map['id'],
      name : map['name'],
      username : map['username'],
      email : map['email'],
      address : map['address'],
      phone : map['phone'],
      website : map['website'],
      company : map['company']
  );
}