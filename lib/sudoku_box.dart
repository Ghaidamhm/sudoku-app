import 'package:flutter/material.dart';

class SudokuBox extends StatefulWidget {

  @override
  State<SudokuBox> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SudokuBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.all(6),
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: GridView.builder(
                          itemCount: 9,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (buildContext, index) {
                        return ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Colors.white),
                          ),
                        );
                      },
                    )
      ),
     );
  }
}
