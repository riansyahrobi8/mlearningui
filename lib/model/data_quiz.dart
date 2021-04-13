class QuestionQuiz {
  final String question;
  final List<Selection> selectionsList;

  QuestionQuiz(this.question, this.selectionsList);
}

class Selection {
  final int value;
  final String selection;

  Selection(this.value, this.selection);
}

List<QuestionQuiz> questionQuiz = [
  QuestionQuiz("Berapakah 1 + 1 ?", [
    Selection(1, "1"),
    Selection(2, "2"),
    Selection(3, "3"),
    Selection(4, "4"),
    Selection(5, "5")
  ]),
  QuestionQuiz("Berapakah 1 + 4 ?", [
    Selection(1, "1"),
    Selection(2, "2"),
    Selection(3, "3"),
    Selection(4, "4"),
    Selection(5, "5")
  ]),
  QuestionQuiz("Berapakah 2 + 2 ?", [
    Selection(1, "1"),
    Selection(2, "2"),
    Selection(3, "3"),
    Selection(4, "4"),
    Selection(5, "5")
  ]),
  QuestionQuiz("Berapakah 1 + 0 ?", [
    Selection(1, "1"),
    Selection(2, "2"),
    Selection(3, "3"),
    Selection(4, "4"),
    Selection(5, "5")
  ])
];
