import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LinearControls extends StatefulWidget {
  @override
  _LinearControlsState createState() => _LinearControlsState();
}

class _LinearControlsState extends State<LinearControls> {
  String inputArray;
  String searchKey;
  double currentSpeed = 1.0;

  TextEditingController _inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(12.0),
          width: 500,
          decoration: ShapeDecoration(
            shape: Border(
              bottom: BorderSide(color: Colors.grey[900]),
            ),
          ),
          child: Text(
            'Controls',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Input',
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            helperText: 'Enter comma separated values.\t Max: 10',
          ),
          controller: _inputController,
          onChanged: (String newValue) {
            setState(() {
              inputArray = newValue;
            });
          },
        ),
        Align(
          alignment: Alignment.centerRight,
          child: RaisedButton(
            color: Colors.grey[700],
            onPressed: () {},
            child: Text('Create'),
          ),
        ),
        Row(
          children: [
            Text(
              'Generate Random Values:\t',
              textAlign: TextAlign.left,
            ),
            IconButton(
              icon: Icon(MaterialCommunityIcons.alphabetical),
              onPressed: () {},
              tooltip: 'Generate random alphabets',
            ),
            IconButton(
              icon: Icon(MaterialCommunityIcons.numeric),
              onPressed: () {},
              tooltip: 'Generate random numbers',
            )
          ],
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Search Key',
            labelStyle: TextStyle(color: Colors.white),
            helperText: 'Enter the value to search.',
          ),
          onChanged: (String newValue) {
            setState(() {
              searchKey = newValue;
            });
          },
        ),
        Align(
          alignment: Alignment.centerRight,
          child: RaisedButton(
            color: Colors.grey[700],
            onPressed: () {},
            child: Text('Search'),
          ),
        ),
        Text(
          'Speed',
          style: TextStyle(fontSize: 16.0),
        ),
        Slider(
          onChanged: (double newSpeed) {
            setState(() {
              currentSpeed = newSpeed;
            });
          },
          value: currentSpeed,
          min: 0.1,
          max: 2.0,
          divisions: 10,
          inactiveColor: Colors.grey[700],
          activeColor: Colors.grey[200],
        ),
      ],
    );
  }
}
