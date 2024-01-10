import 'package:flutter/material.dart';

class ResScreen extends StatelessWidget {
  const ResScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 400,
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            // color: Colors.black38,
            alignment: Alignment.center,
            height: 300,
            // width: 200,

            margin: const EdgeInsets.all(20),
            // padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Colors.black26,
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20.00))),
          ),
          Container(
            // color: Colors.black38,
            alignment: Alignment.center,
            height: 300,
            // width: 200,

            margin: const EdgeInsets.all(20),
            // padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Colors.black26,
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20.00))),
          ),
          Container(
            // color: Colors.black38,
            alignment: Alignment.center,
            height: 300,
            // width: 200,

            margin: const EdgeInsets.all(20),
            // padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Colors.black26,
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20.00))),
          ),
          Container(
            // color: Colors.black38,
            alignment: Alignment.center,
            height: 300,
            // width: 200,

            margin: const EdgeInsets.all(20),
            // padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Colors.black26,
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20.00))),
          ),
        ]),
      ),
    );
  }
}
