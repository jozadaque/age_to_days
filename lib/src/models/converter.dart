class Converter {
  final int age;

  Converter({required this.age})
      : assert(age != 0, 'age não pode ser igual a zero'),
        assert(age > 0, 'age não pode ser menor que zero');

  Converter copyWith({int? age}) {
    return Converter(
      age: age ?? this.age,
    );
  }
}
