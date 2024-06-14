import 'package:mobx/mobx.dart';
part 'calc_back.g.dart';

class CalcBack = CalcBackBase with _$CalcBack;

abstract class CalcBackBase with Store {
  @observable
  int char = 0;

  @observable
  int res = 0;

  @observable
  int pm = 0;

  @observable
  double result = 0;

  @observable
  double first = 0;

  @action
  void zero() {
    if (res == 1) {
      res = 0;
      result = 0;
      result = result * 10;
    } else {
      result = result * 10;
    }
  }

  @action
  void setNumber(double number) {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + number;
      } else if (pm == 1) {
        result = result * 10 - number;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + number;
      } else if (pm == 1) {
        result = result * 10 - number;
      }
    }
  }

  @action
  void func(var sost) {
    switch (sost) {
      case 'AC':
        result = 0;
        pm = 0;
        first = 0;
        char = 0;
        break;
      case '+/-':
        if (pm == 0) {
          result = result * -1;
          pm = 1;
        } else if (pm == 1) {
          result = result * -1;
          pm = 0;
        }
        break;
      case '%':
        result = result / 100;
        break;
      case '/':
        char = 4;
        first = result;
        result = 0;
        break;
      case '*':
        char = 3;
        first = result;
        result = 0;
        break;
      case '-':
        char = 2;
        first = result;
        result = 0;
        break;
      case '+':
        char = 1;
        first = result;
        result = 0;
        break;
      case '=':
        if (char == 1) {
          result = first + result;
          res = 1;
          pm = 0;
          first = 0;
          char = 0;
        } else if (char == 2) {
          result = first - result;
          res = 1;
          pm = 0;
          first = 0;
          char = 0;
        } else if (char == 3) {
          result = first * result;
          res = 1;
          pm = 0;
          first = 0;
          char = 0;
        } else if (char == 4) {
          result = first / result;
          res = 1;
          pm = 0;
          first = 0;
          char = 0;
        }
    }
  }
}
