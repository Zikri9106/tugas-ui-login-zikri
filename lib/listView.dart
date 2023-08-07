import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Sample list data
  final List<String> dataList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[100 * (index % 9 + 1)],
              child: Center(child: Text(dataList[index])),
            );
          },
        ),
      ),
    );
  }
}
