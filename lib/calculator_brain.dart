import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Normal bir insandan daha yüksek Vücut Kitle Endeksin var. Daha çok egzersiz yapmayı dene.';
    } else if (_bmi >= 18.5) {
      return 'Normal bir vücut ağırlığın var. İyi iş!';
    } else {
      return 'Normal bir insandan daha düşük VKİ\'n var. Daha çok yemek ye!';
    }
  }
}
