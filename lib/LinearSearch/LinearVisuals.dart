import 'package:flutter/material.dart';

class LinearSearchVisual extends StatefulWidget {
  @override
  _LinearSearchVisualState createState() => _LinearSearchVisualState();
}

class _LinearSearchVisualState extends State<LinearSearchVisual> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: ShapeDecoration(
            shape: Border(
              bottom: BorderSide(
                color: Colors.grey[600],
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Linear Search',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.linear_scale,
                semanticLabel: 'Linear Array',
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: buildListBox([7, 2, 45, 76]),
          ),
        )
      ],
    );
  }

  List<SizedBox> buildListBox(List<int> searchArray) {
    List<SizedBox> array = [];

    for (int i = 0; i < searchArray.length; i++) {
      array.add(
        SizedBox(
          height: 40.0,
          width: 40.0,
          child: Container(
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: Color.fromRGBO(0, 0, 0, 0),
              shape: Border.all(color: Colors.grey[700]),
            ),
            child: Text(
              '${searchArray[i]}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      );
    }
    return array;
  }
}
