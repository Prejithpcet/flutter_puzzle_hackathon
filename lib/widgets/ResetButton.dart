import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetButton extends StatelessWidget {
  Function reset;
  String text;

  ResetButton(this.reset, this.text);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      onPressed: () {
        reset();
        Fluttertoast.showToast(
          msg: 'Puzzle is Been Resetted',
          fontSize: 18,
          textColor: Colors.blueAccent,
          backgroundColor: Colors.white,
        );
      },
      elevation: 8.0,
      shape: CircleBorder(),
      child: Center(
        child: Icon(
          Icons.refresh_rounded,
          color: Colors.blueAccent,
          size: 35,
        ),
      ),
    );

    // );
  }
}