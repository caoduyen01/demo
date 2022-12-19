class Address{
  final String street;
  final String suite;
  final String zipCode;
  final String city;

  Address({
    required this.street,
    required this.suite,
    required this.zipCode,
    required this.city
  });

  Address.fromMap(Map map)
      : this(
      street : map['street'],
      suite : map['email'],
      zipCode : map['zipCode'],
      city : map['city']
  );

}