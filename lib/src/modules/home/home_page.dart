import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Socorro Deus'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            color: Colors.blueGrey,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                color: Colors.blue,
                child: Text('oi'),
              ),
              Container(
                height: 40,
                width: 40,
                color: Colors.pink,
              ),
            ],
          ),
          Card(
            margin: EdgeInsets.zero,
            child: Container(
              height: 40,
              width: 40,
              color: Colors.pink,
            ),
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () => showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1998),
              lastDate: DateTime.now(),
            ),
          ),
        ],
      ),
    );
  }
}
