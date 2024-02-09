class Question {
  final String title;
  final List<Map> answers;

  Question({required this.title, required this.answers});
}

class QuestionData {
  final _data = [
    Question(
        title: 'What is the name of the main character in the book?',
        answers: [
          {'answer': 'Violetta Son'},
          {'answer': 'Caroline Adderlay-Bates'},
          {
            'answer': 'Ray Berens',
            'isCorrect': 1,
          },
          {'answer': 'Major Eva'},
        ]),
    Question(
        title: 'What is the name of the first chapter of the book?',
        answers: [
          {'answer': 'Begins'},
          {'answer': 'Сonfession', 'isCorrect': 1},
          {'answer': 'A Long Dream'},
          {'answer': 'Pain'},
        ]),
    Question(title: 'How Violetta died?', answers: [
      {'answer': 'old age'},
      {'answer': 'killed by officers', 'isCorrect': 1},
      {'answer': 'drowned in the sea'},
      {'answer': 'disease'},
    ]),
  ];

  List<Question> get questions => [..._data];
}
