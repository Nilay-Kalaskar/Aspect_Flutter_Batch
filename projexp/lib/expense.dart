import 'package:flutter/material.dart';
import 'package:projexp/explis.dart';
import 'package:projexp/model/expModel.dart';

class ExpScr1 extends StatefulWidget {
  const ExpScr1({super.key});

  @override
  State<ExpScr1> createState() => _ExpScr1State();
}

class _ExpScr1State extends State<ExpScr1> {
  List<Expense> regExpense = [
    Expense(title: "shirt", amount: 15, category: Category.clothing),
    Expense(title: "movie", amount: 15, category: Category.entertainment),
    Expense(title: "trip", amount: 15, category: Category.travel)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          SafeArea(child: const Text("data 1")),
          // const SizedBox(
          //   height: 30,
          // ),
          Expanded(child: ExpList(expense: regExpense)),
        ],
      )),
    );
  }
}
