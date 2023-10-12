class QuizQuestion {

  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers); //original list
    shuffledList.shuffle(); //new list is created here
    return shuffledList; //return new list.
  }
}