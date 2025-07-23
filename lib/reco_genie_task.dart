import 'package:flutter/material.dart';

class RecoGenieTask extends StatelessWidget {
  const RecoGenieTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Text('Flutter Demo Home Page'),
    );
  }
}
