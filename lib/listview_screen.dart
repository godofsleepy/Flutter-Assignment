import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  ListViewScreen({Key key}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<String> _data = List.generate(10, (index) => "data ke $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(_data[index]),
          ),
        ));
  }
}
