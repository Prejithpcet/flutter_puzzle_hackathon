import 'package:flutter/material.dart';
import 'Time.dart';
import 'ResetButton.dart';
import 'Move.dart';

class Menu extends StatelessWidget {
  Function reset;
  int move;
  int secondsPassed;
  var size;

  Menu(this.reset, this.move, this.secondsPassed, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Move(move),
          ResetButton(reset, "Reset"),
          Time(secondsPassed),
        ],
      ),
    );
  }
}
