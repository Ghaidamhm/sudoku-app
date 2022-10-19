import 'dart:math';

import 'package:flutter/material.dart';
import './sudoku_box.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {

 
generateCellNumbers(){


}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Expanded(
      
      child: Column(
        children: [
          Row(children: [
              SudokuBox(),
              SudokuBox(),
              SudokuBox(),

          ],),
             Row(children: [
              SudokuBox(),
              SudokuBox(),
              SudokuBox(),

          ],),
             Row(children: [
              SudokuBox(),
              SudokuBox(),
              SudokuBox(),

          ],),
        ],
      )
    ));
  }
}
