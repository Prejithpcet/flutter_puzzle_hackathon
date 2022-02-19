import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Move extends StatelessWidget {
  int move;

  Move(this.move);

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
          msg: 'Movement Button Pressed',
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
            'Move: ${move}',
            style: TextStyle(
              fontFamily: 'Merriweather',
              fontSize: 12,
              color: Colors.blueAccent,
            ),
          ),
        ),
        icon: Icon(
          Icons.add_to_home_screen,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
