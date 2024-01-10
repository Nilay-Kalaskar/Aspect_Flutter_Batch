
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
   const MyApp(this.startqui,{super.key});

    final void Function() startqui;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 350.0,
                width: 250.0,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/aspect_logo.jpg"),
                  ),
                ),
              ),
              // const SizedBox(height: 20.0),
              const Text(
                "A professional and reliable exam portal for online assessments.",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton.icon(
                onPressed: startqui,
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  textStyle: const TextStyle(fontSize: 18.0),
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                icon: const Icon(Icons.play_arrow, size: 30.0),
                label: const Text(
                  "Start Exam",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
