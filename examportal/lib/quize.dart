import 'package:examportal/qust.dart';
import 'package:examportal/start_screen.dart';
import 'package:flutter/material.dart';

class Quize extends StatefulWidget {
  const Quize({super.key});

  @override
  State<Quize> createState() => _QuizeState();
}

class _QuizeState extends State<Quize> {
  var curscreen1 = "start";
  var curscreen;

  void changeScreen() {
    
    setState(() {
      curscreen1 = "ques";
    });
  }

  @override
  Widget build(BuildContext context) {
     curscreen =
        curscreen1 == "start" 
        ? MyApp(changeScreen) : const QuestionScreen();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Exam Portal",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(226, 241, 73, 73),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(230, 235, 137, 137),
              Color.fromARGB(163, 171, 239, 171)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: curscreen,
        ),
      ),
    );
  }
}
