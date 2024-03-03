import 'package:flutter/material.dart';

import 'BoxInner.dart';
import 'focuClass.dart';

class SudokuHome extends StatefulWidget {
  const SudokuHome({Key? key});
  @override
  State<SudokuHome> createState() => _SudokuHomeState();
}

class _SudokuHomeState extends State<SudokuHome> {

  List<BoxInner> boxInners = [];
  FocusClass focusClass = FocusClass();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: const Text(
            "Sudoku Game",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.teal.shade200,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Card(
                  elevation: 2.6,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade800,
                      // borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridView.builder(
                      itemCount: 9,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.teal,
                          alignment: Alignment.center,
                          child: GridView.builder(
                            itemCount: 9,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade300,
                                ),
                                //color: Colors.grey,
                                child: Center(
                                  child: Text(
                                    "${index+1}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: GridView.builder(
                              itemCount: 9,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1,
                                crossAxisSpacing: 6,
                                mainAxisSpacing: 6,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return ElevatedButton(
                                  onPressed: (){},
                                  child: Text(
                                    '${index+1}',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.orange.shade300),
                                ),
                                child: Container(
                                  child: Text(
                                      'Clear',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  generatePuzzel(){

  }
}
