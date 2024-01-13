import 'package:flutter/material.dart';
import 'package:projexp/explis.dart';
import 'package:projexp/model/expModel.dart';
import 'package:projexp/newExpence.dart';

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

    void showd() {
      print("Inside");
      // showModalBottomSheet<void>(
      //     context: context,
      //     builder: (BuildContext context) {
      //       print("hello");
      //       return Container(
      //         height: 200,
      //         color: Colors.amber,
      //         child: Center(
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             mainAxisSize: MainAxisSize.min,
      //             children: <Widget>[
      //               const Text('Modal BottomSheet'),
      //               ElevatedButton(
      //                 child: const Text('Close BottomSheet'),
      //                 onPressed: () => Navigator.pop(context),
      //               ),
      //             ],
      //           ),
      //         ),
      //       );
      //     });
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return const NewExpense();
        }
      );
    }

    return  Scaffold(
        appBar: AppBar(
          title:const  Text(
              "MoneyManger",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          
          actions: [
            IconButton(
              onPressed: showd,
              icon: const Icon(Icons.add),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 24, 232, 236),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(child: ExpList(expense: regExpense)),
          ],
        ),
    );
  }
}
