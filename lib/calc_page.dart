import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterapp/calc_back.dart';

class CalcPage extends StatelessWidget {
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent),
                              onPressed: calc.ac,
                              child: Text(
                                'AC',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.seven,
                              child: Text(
                                '7',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.four,
                              child: Text(
                                '4',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.one,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent),
                              onPressed: calc.plusminus,
                              child: Text(
                                '+/-',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.eight,
                              child: Text(
                                '8',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.five,
                              child: Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.two,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
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
                              ),
                            ),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purpleAccent),
                              onPressed: calc.peresent,
                              child: Text(
                                '%',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.nine,
                              child: Text(
                                '9',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.six,
                              child: Text(
                                '6',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: calc.three,
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey),
                              onPressed: () {},
                              child: Text(
                                ',',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellowAccent),
                              onPressed: calc.division,
                              child: Text(
                                '/',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellowAccent),
                              onPressed: calc.multiplication,
                              child: Text(
                                '*',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellowAccent),
                              onPressed: calc.minus,
                              child: Text(
                                '-',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellowAccent),
                              onPressed: calc.plus,
                              child: Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellowAccent),
                              onPressed: calc.answer,
                              child: Text(
                                '=',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.black),
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              )
            ])));
  }
}
