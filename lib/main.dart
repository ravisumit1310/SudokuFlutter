import 'package:flutter/material.dart';
import 'package:suduko/sudokuui.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Sudoku App',
      home: const SudokuHome(),
    );
  }
}
