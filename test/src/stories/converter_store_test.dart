import 'package:age_to_days/src/models/converter.dart';
import 'package:age_to_days/src/stories/converter_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Success Test: ",
    () {
      test(
        'deve retornar 1095 quando age for 3',
        () {
          Converter age = Converter(age: 3);
          ConverterStore converterStore = ConverterStore();
          converterStore.converterAgeToDays(age);
          expect(converterStore.result, 1095);
        },
      );

      test(
        'deve retornar 1460 ao mudar o age de 3 para 4',
        () {
          Converter age = Converter(age: 3);
          ConverterStore converterStore = ConverterStore();
          age = age.copyWith(age: 4);

          converterStore.converterAgeToDays(age);
          expect(converterStore.result, 1460);
        },
      );
    },
  );

  group(
    'Errors Test: ',
    () {
      test(
        'Deve retornar um erro quando  for passado 0 valores para o age',
        () {
          expect(() => Converter(age: 0), throwsA(isA()));
        },
      );

      test(
        'Deve retornar um erro quando for passado valor menor que 0 ao age',
        () {
          expect(() => Converter(age: -1), throwsA(isA<AssertionError>()));
        },
      );
    },
  );
}
