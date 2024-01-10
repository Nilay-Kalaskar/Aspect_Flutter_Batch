import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(211, 225, 175, 83),
        Color.fromARGB(255, 211, 160, 155)
      ],begin: Alignment.topCenter,end: Alignment.bottomCenter)),),),));
}

