class QuestionModel {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuestionModel(
      {
      required this.question,
      required this.options,
      required this.correctAnswerIndex
      });
}

class CategoryModel {
  final String image;
  final String name;
  final List<QuestionModel> question;

  CategoryModel(
    {
      required this.image, 
      required this.name, 
      required this.question
    });
}