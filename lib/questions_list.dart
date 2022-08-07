import 'package:flutter/material.dart';
import 'question_tile.dart';

class QuestionList extends StatelessWidget {
  QuestionList({Key? key, required List<dynamic> list}) : super(key: key) {
    _widgetList = List.generate(list.length, (index) {
      return QuestionTile(jsonMap: list[index]);
    });
  }
  late final List<QuestionTile> _widgetList;
  int get getResult {
    int result = 0;
    for (var element in _widgetList) {
      if (element.isCorrectChoice) result += 1;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _widgetList,
    );
  }
}
