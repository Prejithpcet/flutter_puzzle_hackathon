import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  Function click;
  String text;

  GridButton(this.text, this.click);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (rect) => LinearGradient(
          colors: [Colors.blue.shade900, Colors.blue.shade300],
        ).createShader(rect),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Merriweather',
          ),
        ),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(8.0),
      ),
      onPressed: click,
    );
  }
}
