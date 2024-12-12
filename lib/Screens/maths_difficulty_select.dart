import 'package:flutter/material.dart';
import "dart:developer" as devtools;

class MathsDifficultySelect extends StatefulWidget {
  const MathsDifficultySelect({super.key});

  @override
  State<MathsDifficultySelect> createState() => _MathsDifficultySelectState();
}

class _MathsDifficultySelectState extends State<MathsDifficultySelect> {
  @override
  Widget build(BuildContext context) {
    List<String> stars = ["OneStar.png", "TwoStars.png", "ThreeStars.png"];
    List<String> difficulty = ["Easy", "Medium", "Difficult"];
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 249, 255, 193),
          Color.fromARGB(255, 255, 247, 171),
          Color.fromARGB(255, 157, 238, 160)
        ], begin: Alignment.centerLeft, end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: Image.asset(
                  "assets/Images/DifficultyImage1.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                        child: Text(
                          "Select Difficulty",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "sans-serif"),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => InkWell(
                                onTap: (){devtools.log("You have pressed ${difficulty[index]}");},
                                child: Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  height: 100,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      gradient: const RadialGradient(
                                        colors: [
                                          Color.fromARGB(255, 243, 227, 86),
                                          Color.fromARGB(255, 219, 252, 220),
                                        ],
                                        center: Alignment(
                                            0.0, 0.0), // Center of the gradient
                                        radius: 12,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 8,
                                            offset: const Offset(2, 2))
                                      ]),
                                  child: Column(children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 6, 5, 0),
                                      height: 70,
                                      width: double.infinity,
                                      child: Image.asset(
                                        "assets/Images/${stars[index]}",
                                      ),
                                    ),
                                    Text(
                                      difficulty[index],
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
