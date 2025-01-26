import 'package:flutter/material.dart';
import 'package:flutter_example1/controller/swapname_controller.dart';
import 'package:flutter_example1/screen/swapname.dart';
import 'package:provider/provider.dart';
//import 'package:test_fullter/exampls/counter_example.dart';

//import 'package:test_fullter/exampls/sliver_appbar_exaple.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      child: const MainApp(),
      create: (context) => NameSwapController(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NameSwapWithProvider(),
      debugShowCheckedModeBanner: false,
    );
  }
}
