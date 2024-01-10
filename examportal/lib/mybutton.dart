import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  Mybutton(this.bname, this.clikbutton, {super.key});
  String bname;
  void Function() clikbutton;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0),

      child: ElevatedButton(
        onPressed: clikbutton,
        style: ElevatedButton.styleFrom(
          textStyle:
              const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        child: Text(bname),
      ),
    );
  }
}
