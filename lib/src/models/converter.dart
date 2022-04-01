class Converter {
  final int age;

  Converter({required this.age})
      : assert(age >= 0, 'age não pode ser menor que zero');

  factory Converter.empty() => Converter(age: 0);

  Converter copyWith({int? age}) {
    return Converter(
      age: age ?? this.age,
    );
  }
}
