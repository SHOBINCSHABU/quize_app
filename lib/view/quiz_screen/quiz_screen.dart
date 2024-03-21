import 'package:flutter/material.dart';
import 'package:quize_app/core/constants/color_constants.dart';
import 'package:quize_app/model/quiz_screen_model/quiz_screen_model.dart';
import 'package:quize_app/view/result_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.category});
  final CategoryModel category;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQstnIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswersCount = 0;
  int wrongAnswersCount = 0;
  int totalScoreCount = 0;
  int skippedCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstant.primaryGrey),
                child: Text(
                  widget.category
                      .question[currentQstnIndex].question,
                  style: TextStyle(
                      color: ColorConstant.primaryWhite, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                    widget.category
                        .question[currentQstnIndex].options.length,
                    (index) => InkWell(
                          onTap: () {
                            if (selectedAnswerIndex == null) {
                              selectedAnswerIndex = index;
                              if (selectedAnswerIndex ==
                                  widget.category
                                      .question[currentQstnIndex]
                                      .correctAnswerIndex) {
                                rightAnswersCount++;
                              } else {
                                wrongAnswersCount++;
                              }
                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: (index ==
                                                  widget.category
                                                      .question[
                                                          currentQstnIndex]
                                                      .correctAnswerIndex &&
                                              selectedAnswerIndex != null)
                                          ? Colors.green
                                          : selectedAnswerIndex == index
                                              ? (selectedAnswerIndex ==
                                                      widget.category
                                                          .question[
                                                              currentQstnIndex]
                                                          .correctAnswerIndex
                                                  ? Colors.green
                                                  : Colors.red)
                                              : ColorConstant.primaryGrey),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.category
                                        .question[currentQstnIndex]
                                        .options[index],
                                    style: TextStyle(
                                        color: ColorConstant.primaryWhite,
                                        fontSize: 18),
                                  ),
                                  Icon(
                                    buildIcons(index),
                                    color: ColorConstant.primaryGreen,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (currentQstnIndex <
                      widget.category.question.length - 1) {
                    currentQstnIndex++;
                    selectedAnswerIndex = null;
                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              category: widget.category,
                                rightAnswersCount: rightAnswersCount,
                                wrongAnswersCount: wrongAnswersCount,
                                totalScoreCount: widget.category.question.length,
                                skippedCount: skippedCount,)));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.primaryBlue),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      currentQstnIndex==widget.category.question.length-1
                      ?"finish": 
                      selectedAnswerIndex==null
                      ?"Skip":
                      "Next",
                      style: TextStyle(
                          color: ColorConstant.primaryWhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color buildColor(int index) {
    if (index ==
            widget.category
                .question[currentQstnIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return ColorConstant.primaryGreen;
    } else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex ==
          widget.category
              .question[currentQstnIndex].correctAnswerIndex) {
        return ColorConstant.primaryGreen;
      } else {
        return ColorConstant.primaryRed;
      }
    } else {
      return ColorConstant.primaryGrey;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            widget.category
                .question[currentQstnIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (index == selectedAnswerIndex) {
      if (selectedAnswerIndex !=
          widget.category
              .question[currentQstnIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
