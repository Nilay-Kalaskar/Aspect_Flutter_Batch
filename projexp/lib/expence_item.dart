import 'package:flutter/material.dart';
import 'package:projexp/model/expModel.dart';

class Listitem extends StatelessWidget {
 Listitem({super.key, required this.expen});
  Expense expen;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child:  SizedBox(
        height: 100,
        child: Text(expen.title)),
    );
  }
}