import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

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

  String interpretattion() {
    if (_bmi >= 25) {
      return 'You have a higher than a normal body weight. Try and exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job and keep it up.';
    } else {
      return 'You have less than a normal body weight. Try and eat more.';
    }
  }
}
