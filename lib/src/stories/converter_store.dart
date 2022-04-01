import 'package:age_to_days/src/models/converter.dart';
import 'package:flutter/widgets.dart';

class ConverterStore extends ChangeNotifier {
  int result = 0;

  converterAgeToDays(Converter age) {
    final days = age.age * 365;
    result = days;
    notifyListeners();
  }
}
