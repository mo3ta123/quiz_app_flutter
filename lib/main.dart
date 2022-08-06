import 'package:flutter/material.dart';
import 'package:quiz_app/question_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            QuestionTile(
              jsonMap: {
                'incorrect_answers': ['bell', 'hell'],
                'correct_answer': 'sldfj',
                'question': 'how is the weather'
              },
            ),
            QuestionTile(
              jsonMap: {
                'incorrect_answers': ['bell', 'hell'],
                'correct_answer': 'sldfj',
                'question': 'how is the weather'
              },
            ),
            QuestionTile(
              jsonMap: {
                'incorrect_answers': ['bell', 'hell'],
                'correct_answer': 'sldfj',
                'question': 'how is the weather'
              },
            ),
          ],
        ),
      ),
      // child: Column(
      //   children: [
      //     Radio(
      //       value: _index,
      //       groupValue: 0,
      //       onChanged: (value) {
      //         setState(
      //           () {
      //             _index = 0;
      //           },
      //         );
      //       },
      //     ),
      //     Radio(
      //       value: _index,
      //       groupValue: 1,
      //       onChanged: (value) {
      //         setState(
      //           () {
      //             _index = 1;
      //           },
      //         );
      //       },
      //     ),
      //     Radio(
      //       value: _index,
      //       groupValue: 2,
      //       onChanged: (value) {
      //         setState(
      //           () {
      //             _index = 2;
      //           },
      //         );
      //       },
      //     ),
      //   ],
      // ),
    ));
  }
}

void doNothing(Object? obj) {}
