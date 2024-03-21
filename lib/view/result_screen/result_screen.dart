import 'package:flutter/material.dart';
import 'package:quize_app/controller/quiz_screen_controller.dart';
import 'package:quize_app/core/constants/color_constants.dart';
import 'package:quize_app/model/quiz_screen_model/quiz_screen_model.dart';
import 'package:quize_app/view/quiz_screen/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.rightAnswersCount,
      required this.wrongAnswersCount,
      required this.totalScoreCount,
      required this.skippedCount, 
      required this.category});

  final int rightAnswersCount;
  final int wrongAnswersCount;
  final int totalScoreCount;
  final int skippedCount;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final percentage =
        (rightAnswersCount / HomeScreenController.flutterQuestions.length) *
            100;
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Congrats!!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: ColorConstant.primaryWhite),),
            SizedBox(height: 10,),
            Text(
              "Your Score is ${percentage.round()} %",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: ColorConstant.primaryGreen),
            ),
            SizedBox(height: 10,),
            Text(
              "Correct Answer is  is ${rightAnswersCount.round()}",
              style: TextStyle(fontSize: 15, color: ColorConstant.primaryWhite),
            ),
            Text(
              "Wrong Answer is ${wrongAnswersCount.round()}",
              style: TextStyle(fontSize: 15, color: ColorConstant.primaryWhite),
            ),
            // Text(
            //   "Total Question Count is ${totalScoreCount.round()}",
            //   style: TextStyle(fontSize: 15, color: ColorConstant.primaryWhite),
            // ),
            Text(
              "Skipped Questions is ${totalScoreCount - wrongAnswersCount - rightAnswersCount}",
              style: TextStyle(fontSize: 15, color: ColorConstant.primaryWhite),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => 
                QuizScreen(category: category,),
                ));
              }, 
              child: Text("Restart", 
              style: TextStyle(
                color: ColorConstant.primaryWhite),))
          ],
        ),
      ),
    );
  }
}
