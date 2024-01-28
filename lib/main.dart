import 'package:flutter/material.dart';

import 'presentation/screens/counter/counter_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.title,
    super.key,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void resetCount() => setState(() => _counter = 0);
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter == 0 ? _counter = 0 : _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterFunctionsScreen(
      onIncrement: incrementCounter,
      onDecrement: decrementCounter,
      onReset: resetCount,
      count: _counter,
    );
  }
}
