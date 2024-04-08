class Testproblem {
  const Testproblem(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledanswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
