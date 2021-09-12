import 'package:flutter/material.dart';

class SnippetQuiz extends StatefulWidget {
  const SnippetQuiz({Key? key}) : super(key: key);

  @override
  _SnippetQuizState createState() => _SnippetQuizState();
}

class _SnippetQuizState extends State<SnippetQuiz> {
  final List<Map<String, dynamic>> _questions = [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {'text': 'Yes', 'score': -2},
        {'text': 'No', 'score': 10},
      ],
    },
  ];
  final List<Map<String, dynamic>> _questionsRandom = [];
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  void initState() {
    _questions.toList()
      ..shuffle()
      ..forEach(_questionsRandom.add);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: _questionIndex < _questions.length
            ? SnippetQuizQuiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questionsRandom,
              )
            : SnippetQuizResult(
                resultScore: _totalScore,
                resetHandler: _resetQuiz,
              ),
      ),
    );
  }
}

class SnippetQuizQuiz extends StatelessWidget {
  const SnippetQuizQuiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
    Key? key,
  }) : super(key: key);

  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SnippetQuizQuestion(
          questionText: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return SnippetQuizAnswer(
            selectHandler: () => answerQuestion(answer['score']),
            answerText: answer['text'],
          );
        }).toList(),
      ],
    );
  }
}

class SnippetQuizQuestion extends StatelessWidget {
  const SnippetQuizQuestion({
    required this.questionText,
    Key? key,
  }) : super(key: key);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class SnippetQuizAnswer extends StatelessWidget {
  const SnippetQuizAnswer({
    required this.selectHandler,
    required this.answerText,
    Key? key,
  }) : super(key: key);

  final VoidCallback selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText),
        ),
      ),
    );
  }
}

class SnippetQuizResult extends StatelessWidget {
  const SnippetQuizResult({
    required this.resultScore,
    required this.resetHandler,
    Key? key,
  }) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'You are awesome!';
    } else if (resultScore >= 31) {
      resultText = 'Pretty likeable!';
    } else if (resultScore >= 21) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Score ' '$resultScore',
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text(
              'Restart Quiz!',
            ),
          ),
        ],
      ),
    );
  }
}
