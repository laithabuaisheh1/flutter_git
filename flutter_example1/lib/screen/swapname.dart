//import 'package:example_project/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example1/controller/swapname_controller.dart';
import 'package:provider/provider.dart';
// import 'dart:math';
//import 'package:flutter_example1/controllers/swapname_controller.dart';
//import 'package:provider/provider.dart';

class NameSwapWithProvider extends StatelessWidget {
  const NameSwapWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final name = context.watch<NameSwapController>().name;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Swap Example'),
      ),
      body: Center(
        child: Text(
          'Name value: $name ',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // CALL
          // Access the provider and call increment
          context.read<NameSwapController>().swapName();
          //******
        },
        child: const Icon(Icons.person),
      ),
    );
  }
}
