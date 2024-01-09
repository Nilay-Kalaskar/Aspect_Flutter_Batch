import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Welcome!!",
            style: TextStyle(
              fontSize: 25.0,
              fontStyle: FontStyle.italic,
              color:  Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(224, 0, 0, 0),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [
              Color.fromARGB(255, 250, 216, 79),
              Colors.black,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/girl.gif"),
          ],
        ),
      ),
    ),
  ));
}
