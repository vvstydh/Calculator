import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterapp/calc_back.dart';

class CalcPage extends StatelessWidget {
  var symb = ['AC', '+/-', '%', '/', '*', '-', '+', '='];
  final CalcBack calc = CalcBack();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                      height: 100,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
                        child: Observer(
                            builder: (_) => Text('${calc.result}',
                                maxLines: 1,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 70,
                                ))),
                      ))
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Column(children: [
                        for (int j = 0; j < 5; j++)
                          if (j == 0)
                            buildButton(symb[i], Colors.yellowAccent, () {
                              calc.func(symb[i]);
                            })
                          else if (i == 3)
                            buildButton(symb[j + 3], Colors.yellowAccent, () {
                              calc.func(symb[j + 3]);
                            })
                          else if (i == 2 && j == 4)
                            buildButton('0', Colors.grey, () {
                              calc.zero();
                            })
                          else if (j != 4)
                            buildButton('${j * 3 + i + 1 - 3}', Colors.grey,
                                () {
                              calc.setNumber(j * 3 + i + 1 - 3);
                            })
                      ]),
                  ])
            ])));
  }
}

Widget buildButton(String text, Color color, VoidCallback onPressed) {
  return Container(
    margin: EdgeInsets.all(5),
    height: 80,
    width: 80,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 23, color: Colors.black),
      ),
    ),
  );
}
