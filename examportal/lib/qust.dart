import 'package:examportal/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:examportal/data/ansdata.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

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
        print("Nomore Questions Available");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // var screenDimension = MediaQuery.of(context).size;

    return Column(
      children: [
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
      ],
    );
  }
}
