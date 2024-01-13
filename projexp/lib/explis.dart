import 'package:flutter/material.dart';
import 'package:projexp/expence_item.dart';
import 'package:projexp/model/expModel.dart';

class ExpList extends StatelessWidget {
  ExpList({super.key, required this.expense});
  List<Expense> expense;

  @override
  Widget build(BuildContext context) {
    // print(expense[0]title);
    return ListView.builder(
        itemCount: expense.length,
        itemBuilder: (contex, index) {//functional parameter
          return Listitem(expen: expense[index]);
          // return Column(
          //   children: [
          //     // Center(
          //     //   child: Text(
          //     //     expense[index].id,
          //     //     style:const TextStyle(
          //     //       backgroundColor:  Color.fromARGB(255, 237, 222, 177),
          //     //     ),
          //     //   ),
          //     // ),
          //     Listitem(expen: expense[index]),
          //     // Center(child: Text(expense[index].title)),
          //     // Center(child: Text(expense[index].amount.toString())),
          //   ],
          // );
        });
  }
}
