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
                            Container(
                                margin: EdgeInsets.all(5),
                                height: 80,
                                width: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.yellowAccent),
                                    onPressed: () => calc.func(symb[i]),
                                    child: Text(
                                      symb[i],
                                      style: TextStyle(
                                          fontSize: 23, color: Colors.black),
                                    )))
                          else if (i == 3)
                            Container(
                                margin: EdgeInsets.all(5),
                                height: 80,
                                width: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.yellowAccent),
                                    onPressed: () => calc.func(symb[j + 3]),
                                    child: Text(
                                      symb[j + 3],
                                      style: TextStyle(
                                          fontSize: 23, color: Colors.black),
                                    )))
                          else if (i == 2 && j == 4)
                            Container(
                                margin: EdgeInsets.all(5),
                                height: 80,
                                width: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey),
                                    onPressed: calc.zero,
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                          fontSize: 23, color: Colors.white),
                                    )))
                          else if (j != 4)
                            Container(
                                margin: EdgeInsets.all(5),
                                height: 80,
                                width: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey),
                                    onPressed: () =>
                                        calc.setNumber(j * 3 + i + 1 - 3),
                                    child: Text(
                                      '${j * 3 + i + 1 - 3}',
                                      style: TextStyle(
                                          fontSize: 23, color: Colors.white),
                                    )))
                      ]),
                  ])
            ])));
  }
}
