
import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  var size;

  MyTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      // width: size.height * 0.50,
      padding: EdgeInsets.only(top: 20),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(25),
      //     bottomRight: Radius.circular(25),
      //   ),
      // ),
      child: Text(
        "Tiles 15",
        style: TextStyle(
            fontFamily: 'Merriweather',
            fontWeight: FontWeight.bold,
            fontSize: size.height * 0.045,
            color: Colors.white,
            decoration: TextDecoration.none),
      ),
    );
  }
}
