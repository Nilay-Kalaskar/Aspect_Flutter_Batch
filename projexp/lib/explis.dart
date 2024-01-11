import 'package:flutter/material.dart';
import 'package:projexp/model/expModel.dart';

class ExpList extends StatelessWidget {
  ExpList({super.key, required this.expense});
  List<Expense> expense;

  @override
  Widget build(BuildContext context) {
    print(expense[0].title);
    return ListView.builder(
        itemCount: expense.length,
        itemBuilder: (contex, index) {
          return Center(child: Text(expense[index].id));
        });
  }
}
