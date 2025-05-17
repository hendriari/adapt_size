import 'package:adapt_size/adapt_size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptSize(
      builder:
          (context) => MaterialApp(
            home: Scaffold(
              appBar: AppBar(title: const Text('Adapt Size Example')),
              body: Center(
                child: Text(
                  'Hello, Adapt Size!',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
          ),
    );
  }
}
