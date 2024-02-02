class Question {
  Question(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledAwnwers = List.of(answers);
    shuffledAwnwers.shuffle();
    return shuffledAwnwers;
  }
}
