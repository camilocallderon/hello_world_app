import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatelessWidget {
  const CounterFunctionsScreen({
    required this.count,
    this.onIncrement,
    this.onDecrement,
    this.onReset,
    super.key,
  });

  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  final VoidCallback? onReset;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _FloatingActionButton(
            onPressed: () => onIncrement?.call(),
            icon: Icons.plus_one,
          ),
          const SizedBox(height: 10),
          _FloatingActionButton(
            onPressed: () => onDecrement?.call(),
            icon: Icons.exposure_minus_1_rounded,
          ),
          const SizedBox(height: 10),
          _FloatingActionButton(
            onPressed: () => onReset?.call(),
            icon: Icons.refresh_rounded,
          ),
        ],
      ),
    );
  }
}

class _FloatingActionButton extends StatelessWidget {
  const _FloatingActionButton({
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
