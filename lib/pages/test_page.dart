import 'package:flutter/material.dart';
import 'package:quizz_app/models/Question.dart';
import 'package:quizz_app/widgets/progress_bar.dart';
import 'package:quizz_app/widgets/quiz.dart';
import 'package:quizz_app/widgets/result.dart';

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(Icons.check_box_outlined, color: Colors.green));
          _countResult++;
        } else {
          _icons
              .add(Icon(Icons.disabled_by_default_outlined, color: Colors.red));
        }

        _questionIndex++;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Dream Hunters Quizz',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: const Color(0xff2a375a),
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ProgressBar(
              icons: _icons,
              count: _questionIndex,
              total: data.questions.length,
            ),
            _questionIndex < data.questions.length
                ? Column(
                    children: [
                      Quiz(
                        index: _questionIndex,
                        questionData: data,
                        onChangeAnswer: _onChangeAnswer,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _questionIndex++;
                                  });
                                },
                                child: Text('I dont know, next',
                                    style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontSize: 20))),
                          ],
                        ),
                      ),
                    ],
                  )
                : Result(
                    onClearState: _clearState,
                    count: _countResult,
                    total: data.questions.length,
                  ),
          ],
        ),
      ),
    );
  }
}
