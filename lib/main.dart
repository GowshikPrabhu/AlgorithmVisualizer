import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:Visualizers/LinearSearch/LinearVisuals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visualizer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Algorithm Visualizers'),
    );
  }
}

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  List<String> expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> _algorithms = [
  Item(
    headerValue: 'Searching',
    expandedValue: ['Linear Search'],
  ),
];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> _data = _algorithms;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.visibility), onPressed: () {}),
          IconButton(icon: Icon(Icons.star), onPressed: () {}),
          IconButton(
              icon: Icon(
                AntDesign.fork,
                size: 20,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              title: Text(_data[index].headerValue),
              children: _buildList(_data[index].expandedValue),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: Border(right: BorderSide(color: Colors.grey[700])),
                    ),
                    child: LinearSearchVisual(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: Border(left: BorderSide(color: Colors.grey[700])),
                    ),
                    child: Text('Controls'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.computer),
                    Text('Output'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(Icons.chrome_reader_mode),
                    Text('Algorithm'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(Icons.code),
                    Text('Code')
                  ],
                ),
                Text('by Gowshik Prabhu')
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildList(List<String> names) {
    List<Widget> list = [];

    for (String name in names) {
      list.add(new ListTile(
        title: Text(name),
        onTap: () {},
      ));
    }

    return list;
  }
}
