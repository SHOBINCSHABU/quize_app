import 'package:flutter/material.dart';
import 'package:quize_app/controller/quiz_screen_controller.dart';
import 'package:quize_app/core/constants/color_constants.dart';
import 'package:quize_app/model/quiz_screen_model/quiz_screen_model.dart';
import 'package:quize_app/view/quiz_screen/quiz_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Hi, Shobin",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: ColorConstant.primaryWhite),
              ),
              subtitle: Text(
                "Lets make this day more productive",
                style: TextStyle(color: ColorConstant.primaryWhite),
              ),
              trailing: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/17069405/pexels-photo-17069405/free-photo-of-man-taking-pictures-on-a-street.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstant.primaryGrey),
              alignment: Alignment.center,
              height: 45,
              width: 300,
              child: Text(
                "Choose a Category",
                style: TextStyle(
                    color: ColorConstant.primaryWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let's play",
                  style: TextStyle(
                      color: ColorConstant.primaryWhite, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                CategoryModel category =
                    CategoryScreenController.question[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(
                              category:
                                  CategoryScreenController.question[index]),
                        ));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(category.image),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.primaryWhite),
                          ),
                        ),
                        Text(category.name,
                        style: TextStyle(
                          color: ColorConstant.primaryWhite,
                          fontSize: 20),),
                          Text("5 Questions",
                          style: TextStyle(
                            color: ColorConstant.primaryWhite
                          ),)
                      ],
                    ),
                  ),
                );
              },
              itemCount: CategoryScreenController.question.length,
            )
          ],
        ),
      ),
    );
  }
}
