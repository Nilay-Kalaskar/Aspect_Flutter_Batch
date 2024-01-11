import 'package:examportal/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:examportal/data/ansdata.dart';

class QuestionScreen extends StatefulWidget {
  final Function? changeScreen;
  final Function? onFinish;
  const QuestionScreen({this.changeScreen, this.onFinish, super.key});
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionIndex = 0;
  String? item;

  var currentQuestion = answer[0];
  void goToNextQuestion() {
    setState(() {
      if (questionIndex < answer.length - 1) {
        questionIndex++;
        currentQuestion = answer[questionIndex];
        currentQuestion.answers.shuffle();
      } else {
      widget.onFinish!();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20.0),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Q.${questionIndex + 1}) ${currentQuestion.text}",
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      const SizedBox(height: 20.0),
      ...currentQuestion.answers.map((item) {
        return Mybutton(item, goToNextQuestion);
      }),
      const SizedBox(
        height: 50.0,
      ),
      if (questionIndex == answer.length - 1)
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            fixedSize: const Size(200, 60),
            side: const BorderSide(
              color: Colors.black,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            // shadowColor: Colors.yellow,
            // elevation: 15,
          ),
          onPressed: () {
            widget.onFinish!();
          },
          child: const Text(
            "Finish",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
    ]);
  }
}
