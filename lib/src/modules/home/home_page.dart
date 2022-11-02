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
        title: const Text('Socorro Deus'),
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
                child: const Text('oi'),
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
            child: const Text('data'),
            onPressed: () => showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1998),
              lastDate: DateTime.now(),
            ),
          ),
          SizedBox(
            width: 240,
            child: Card(
              color: Colors.indigo,
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Card bonito',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    const Divider(),
                    const Text('Você deseja ser bonito ?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal)),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(onPressed: () {}, child: Text('Não')),
                        ElevatedButton(onPressed: () {}, child: Text('Sim'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
