import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({
    required this.count,
    this.onIncrement,
    super.key,
  });

  final VoidCallback? onIncrement;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Click${count == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onIncrement,
        tooltip: 'Increment',
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
