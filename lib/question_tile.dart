import 'dart:math';

import 'package:flutter/material.dart';

class QuestionTile extends StatefulWidget {
  late final String _correctAnswer;
  late final List<String> _answers;
  late final String _question;

  final _random = Random();
  int _next(int min, int max) => min + _random.nextInt(max - min);

  QuestionTile({Key? key, required Map<String, dynamic> jsonMap})
      : super(key: key) {
    _answers = jsonMap['incorrect_answers'] as List<String>;
    _correctAnswer = jsonMap['correct_answer'] as String;
    _answers.insert(_next(0, _answers.length), _correctAnswer);
    _question = jsonMap['question'];
  }
  @override
  State<QuestionTile> createState() => _QuestionTiletState();
}

class _QuestionTiletState extends State<QuestionTile> {
  var _index = -1;
  bool get isCorrectChoice => widget._answers[_index] == widget._correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.grey[200],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            widget._answers.length + 1,
            ((index) {
              if (index == 0) {
                return ListTile(
                  title: Text(
                    widget._question,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }
              return ListTile(
                leading: Radio(
                  groupValue: index,
                  value: _index,
                  onChanged: (value) {
                    setState(
                      () {
                        _index = index;
                      },
                    );
                  },
                ),
                title: Text(widget._answers[index - 1]),
              );
            }),
          ),
        ),
      ),
    );
  }
}
