import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hs_custom_bar/hs_custom_bar.dart';
import 'package:hs_custom_bar/sample/sample_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hs_custom_bar',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'hs_custom_bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? _currentIndex;
  int? _currentIndex2;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TemperatureVerticalBar(10, _currentIndex ?? 1,
              showCountView: true,
            ),
            TemperatureHorizontalBar(10, _currentIndex2 ?? 1,
              gradientStartColor: Colors.blueAccent,
              gradientEndColor: Colors.yellowAccent,
              showCountView: true,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (mounted) {
            setState(() {
              _currentIndex = Random().nextInt(11);
              _currentIndex2 = Random().nextInt(11);
            });
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
