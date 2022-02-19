import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Time extends StatelessWidget {
  int secondsPassed;

  Time(this.secondsPassed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(140, 50),
          primary: Colors.white,
        ),
        onPressed: () => Fluttertoast.showToast(
          msg: 'Timer Button Pressed',
          fontSize: 18,
          textColor: Colors.blueAccent,
          backgroundColor: Colors.white,
        ),
        label: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (rect) => LinearGradient(
            colors: [Colors.blue.shade900, Colors.blue.shade400],
          ).createShader(rect),
          child: Text(
            'Time : ${secondsPassed} s',
            style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 12,
              color: Colors.blueAccent,
            ),
          ),
        ),
        icon: Icon(
          Icons.lock_clock,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
