class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnsers() {
    final a = List.of(answers);
    a.shuffle();
    return a;
  }
}
