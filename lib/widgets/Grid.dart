import 'package:flutter/material.dart';
import 'GridButton.dart';

class Grid extends StatelessWidget {
  var numbers = [];
  var size;
  Function clickGrid;

  Grid(this.numbers, this.size, this.clickGrid);

  @override
  Widget build(BuildContext context) {
    var height = size.height;

    return Container(
      height: height * 0.51,
      child: Padding(
        padding: const EdgeInsets.only(left: 21, right: 21),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return numbers[index] != 0
                ? GridButton("${numbers[index]}", () {
              clickGrid(index);
            })
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}