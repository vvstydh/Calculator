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
  void one() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 1;
      } else if (pm == 1) {
        result = result * 10 - 1;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 1;
      } else if (pm == 1) {
        result = result * 10 - 1;
      }
    }
  }

  @action
  void two() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 2;
      } else if (pm == 1) {
        result = result * 10 - 2;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 2;
      } else if (pm == 1) {
        result = result * 10 - 2;
      }
    }
  }

  @action
  void three() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 3;
      } else if (pm == 1) {
        result = result * 10 - 3;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 3;
      } else if (pm == 1) {
        result = result * 10 - 3;
      }
    }
  }

  @action
  void four() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 4;
      } else if (pm == 1) {
        result = result * 10 - 4;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 4;
      } else if (pm == 1) {
        result = result * 10 - 4;
      }
    }
  }

  @action
  void five() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 5;
      } else if (pm == 1) {
        result = result * 10 - 5;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 5;
      } else if (pm == 1) {
        result = result * 10 - 5;
      }
    }
  }

  @action
  void six() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 6;
      } else if (pm == 1) {
        result = result * 10 - 6;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 6;
      } else if (pm == 1) {
        result = result * 10 - 6;
      }
    }
  }

  @action
  void seven() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 7;
      } else if (pm == 1) {
        result = result * 10 - 7;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 7;
      } else if (pm == 1) {
        result = result * 10 - 7;
      }
    }
  }

  @action
  void eight() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 8;
      } else if (pm == 1) {
        result = result * 10 - 8;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 8;
      } else if (pm == 1) {
        result = result * 10 - 8;
      }
    }
  }

  @action
  void nine() {
    if (res == 1) {
      res = 0;
      result = 0;
      if (pm == 0) {
        result = result * 10 + 9;
      } else if (pm == 1) {
        result = result * 10 - 9;
      }
    } else {
      if (pm == 0) {
        result = result * 10 + 9;
      } else if (pm == 1) {
        result = result * 10 - 9;
      }
    }
  }

  @action
  void ac() {
    result = 0;
    pm = 0;
    first = 0;
    char = 0;
  }

  @action
  void plusminus() {
    if (pm == 0) {
      result = result * -1;
      pm = 1;
    } else if (pm == 1) {
      result = result * -1;
      pm = 0;
    }
  }

  void peresent() {
    result = result / 100;
  }

  @action
  void plus() {
    char = 1;
    first = result;
    result = 0;
  }

  void minus() {
    char = 2;
    first = result;
    result = 0;
  }

  void multiplication() {
    char = 3;
    first = result;
    result = 0;
  }

  void division() {
    char = 4;
    first = result;
    result = 0;
  }

  void answer() {
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
