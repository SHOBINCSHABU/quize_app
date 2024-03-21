import 'package:quize_app/model/quiz_screen_model/quiz_screen_model.dart';

class HomeScreenController {
  static List<QuestionModel> flutterQuestions = [
    QuestionModel(
      question: "What is Flutter?",
      options: [
        "A cross-platform mobile development framework.",
        "A programming language.",
        "A design pattern.",
        "A database management system.",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          "Which programming language is primarily used to develop apps with Flutter?",
      options: [
        "Java",
        "Swift",
        "Dart",
        "Python",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question:
          "What is the name of the layout system used in Flutter for arranging widgets?",
      options: [
        "Flexbox",
        "ConstraintLayout",
        "GridLayout",
        "Widgets",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question:
          "Which widget in Flutter is used to create a scrollable list of widgets?",
      options: [
        "ListView",
        "ScrollView",
        "ScrollableList",
        "ScrollWidget",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          "What is the command to create a new Flutter project from the command line?",
      options: [
        "flutter create",
        "new project flutter",
        "create-flutter",
        "flutter init",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          "Which widget in Flutter is used to show a material design styled button?",
      options: [
        "Button",
        "MaterialButton",
        "FlatButton",
        "RaisedButton",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question: "What is the purpose of the `setState()` method in Flutter?",
      options: [
        "To initiate state management.",
        "To rebuild the widget tree with updated states.",
        "To define the initial state of the widget.",
        "To delete the widget.",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          "In Flutter, what is the name of the method that is called when a widget is first inserted into the widget tree?",
      options: [
        "initWidget()",
        "initState()",
        "insertWidget()",
        "onFirstInsert()",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          "What does the `pubspec.yaml` file in a Flutter project contain?",
      options: [
        "Project configuration and dependencies.",
        "User interface layouts.",
        "Dart code.",
        "Android-specific configurations.",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          "Which command is used to run a Flutter app on an Android emulator or connected device?",
      options: [
        "flutter run",
        "run-flutter",
        "execute-app",
        "flutter start",
      ],
      correctAnswerIndex: 0,
    ),
  ];
}


class CategoryScreenController {
  static List<CategoryModel> question = 
  [
    CategoryModel(
      image: 
      "https://images.pexels.com/photos/358042/pexels-photo-358042.jpeg?auto=compress&cs=tinysrgb&w=600", 
      name: "Sports", 
      question: sportsQuestions),
    CategoryModel(
      image: 
      "https://images.pexels.com/photos/1366942/pexels-photo-1366942.jpeg?auto=compress&cs=tinysrgb&w=600", 
      name: "Chemistry", 
      question: chemistryQuestions),
    CategoryModel(
      image: 
      "https://images.pexels.com/photos/6256258/pexels-photo-6256258.jpeg?auto=compress&cs=tinysrgb&w=600", 
      name: "Maths", 
      question: mathQuestions),
    CategoryModel(
      image: 
      "https://images.pexels.com/photos/1172018/pexels-photo-1172018.jpeg?auto=compress&cs=tinysrgb&w=600", 
      name: "History", 
      question: historyQuestions),
  ];

  static List<QuestionModel> sportsQuestions = [
    QuestionModel(
      question: "Which country won the FIFA World Cup in 2018?",
      options: ["Brazil", "Germany", "France", "Spain"],
      correctAnswerIndex: 2, // France
    ),
    QuestionModel(
      question: "Who is the all-time leading scorer in NBA history?",
      options: ["Kareem Abdul-Jabbar", "Michael Jordan", "LeBron James", "Kobe Bryant"],
      correctAnswerIndex: 0, // Kareem Abdul-Jabbar
    ),
    QuestionModel(
      question: "Which sport is played at Wimbledon?",
      options: ["Tennis", "Golf", "Cricket", "Soccer"],
      correctAnswerIndex: 0, // Tennis
    ),
    QuestionModel(
      question: "Who won the 2020 UEFA European Football Championship (Euro 2020)?",
      options: ["France", "Germany", "Italy", "Portugal"],
      correctAnswerIndex: 2, // Italy
    ),
    QuestionModel(
      question: "In which year did Usain Bolt set the world record for the 100 meters?",
      options: ["2008", "2012", "2016", "2020"],
      correctAnswerIndex: 0, // 2008
    ),
  ];


  static List<QuestionModel> chemistryQuestions = [
    QuestionModel(
      question: "What is the chemical symbol for gold?",
      options: ["Au", "Ag", "Hg", "Pt"],
      correctAnswerIndex: 0, // Au
    ),
    QuestionModel(
      question: "What is the pH value of a neutral solution?",
      options: ["6", "7", "8", "9"],
      correctAnswerIndex: 1, // 7
    ),
    QuestionModel(
      question: "Which element has the atomic number 6?",
      options: ["Carbon", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswerIndex: 0, // Carbon
    ),
    QuestionModel(
      question: "What is the chemical formula for water?",
      options: ["H2O2", "CO2", "H2O", "H3O+"],
      correctAnswerIndex: 2, // H2O
    ),
    QuestionModel(
      question: "What gas do plants absorb during photosynthesis?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswerIndex: 0, // Carbon dioxide
    ),
  ];


  static List<QuestionModel> mathQuestions = [
    QuestionModel(
      question: "What is the value of pi (π) to two decimal places?",
      options: ["3.12", "3.14", "3.16", "3.18"],
      correctAnswerIndex: 1, // 3.14
    ),
    QuestionModel(
      question: "What is the square root of 144?",
      options: ["10", "12", "14", "16"],
      correctAnswerIndex: 1, // 12
    ),
    QuestionModel(
      question: "Simplify the expression: 3x + 2y - 4x + 5y",
      options: ["-x + 7y", "-x - 7y", "7x - y", "-7x + y"],
      correctAnswerIndex: 0, // -x + 7y
    ),
    QuestionModel(
      question: "What is the value of 5 factorial (5!)?",
      options: ["10", "15", "20", "120"],
      correctAnswerIndex: 3, // 120
    ),
    QuestionModel(
      question: "If a triangle has angles measuring 30°, 60°, and 90°, what type of triangle is it?",
      options: ["Isosceles triangle", "Equilateral triangle", "Scalene triangle", "Right triangle"],
      correctAnswerIndex: 3, // Right triangle
    ),
  ];


  static List<QuestionModel> historyQuestions = [
    QuestionModel(
      question: "Who was the first President of the United States?",
      options: ["Thomas Jefferson", "John Adams", "George Washington", "Abraham Lincoln"],
      correctAnswerIndex: 2, // George Washington
    ),
    QuestionModel(
      question: "In which year did World War I begin?",
      options: ["1914", "1916", "1918", "1920"],
      correctAnswerIndex: 0, // 1914
    ),
    QuestionModel(
      question: "Who was the last pharaoh of ancient Egypt?",
      options: ["Cleopatra VII", "Hatshepsut", "Ramesses II", "Akhenaten"],
      correctAnswerIndex: 0, // Cleopatra VII
    ),
    QuestionModel(
      question: "Which ancient civilization built the city of Machu Picchu?",
      options: ["Maya", "Inca", "Aztec", "Egyptian"],
      correctAnswerIndex: 1, // Inca
    ),
    QuestionModel(
      question: "Which famous explorer led the first expedition to circumnavigate the globe?",
      options: ["Christopher Columbus", "Ferdinand Magellan", "Marco Polo", "Vasco da Gama"],
      correctAnswerIndex: 1, // Ferdinand Magellan
    ),
  ];
}


