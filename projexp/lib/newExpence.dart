import 'package:flutter/material.dart';

class NewExpense extends StatelessWidget {
  const NewExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 600,
      child: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Username'),
            ),
          ],
        ),
      ),
    );
  }
}
