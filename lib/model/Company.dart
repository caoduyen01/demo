class Company{
  final String name;
  final String catchPhrase;
  final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs
  });

  Company.fromMap(Map map)
      : this(
      name : map['name'],
      catchPhrase : map['catchPhrase'],
      bs : map['bs']
  );
}