import 'package:flutter/material.dart';
import 'package:socorro_deus/src/modules/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}
