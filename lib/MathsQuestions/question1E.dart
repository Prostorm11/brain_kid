import "package:brain_kid/Screens/maths_difficulty_select.dart";
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as myRive;
import "dart:developer" as devtools;
import "dart:math";
import "dart:ui";

class Question1e extends StatefulWidget {
  final int questionCount;
  final String difficulty;
  const Question1e(
      {super.key, required this.questionCount, required this.difficulty});

  @override
  State<Question1e> createState() => _Question1eState();
}

class _Question1eState extends State<Question1e> {
  Random random = Random();
  bool lock = false;
  Set<int> options = {};
  List<int> optionList = [];

  int value1 = 0;
  int value2 = 0;
  int answer = 0;
  List<Color> buttonColors = [
    const Color.fromARGB(255, 32, 231, 198),
    Colors.blue,
    Colors.amber,
    Colors.white
  ];

  void changeColor(int userAnswer, int index) {
    setState(() {
      if (userAnswer == answer) {
        buttonColors[index] = Colors.green;
      } else {
        buttonColors[index] = Colors.red;
        for (int i = 0; i < optionList.length; i++) {
          if (answer == optionList[i]) {
            buttonColors[i] = Colors.green;
            break;
          }
        }
      }
      lock = true;
    });
  }

  /* void releaseColor() {
    setState(() {
      buttonColors = [
        const Color.fromARGB(255, 32, 231, 198),
        Colors.blue,
        Colors.amber,
        Colors.white
      ];
    });
  } */

  @override
  void initState() {
    super.initState();
    generatequestion();
  }

  void generatequestion() {
    if (widget.difficulty == "Easy") {
      value1 = random.nextInt(10);
      value2 = random.nextInt(10);
    } else if (widget.difficulty == "Medium") {
      value1 = random.nextInt(10) + 10;
      value2 = random.nextInt(10) + 10;
    } else {
      value1 = random.nextInt(20) + 20;
      value2 = random.nextInt(20) + 20;
    }
    answer = value1 + value2;
    generateOptions();
    optionList = options.toList()..shuffle();
  }

  void generateOptions() {
    options = {answer};
    while (options.length < 4) {
      options.add(random.nextInt(20));
    }
  }

  @override
  Widget build(BuildContext context) {
    final int counter = widget.questionCount + 1;
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 166, 187, 255),
              Color.fromARGB(255, 232, 233, 252)
            ])),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 85, 108, 185),
                          ),
                          color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 110,
                            height: 150,
                            child: Center(
                                child: Text(
                              "$value1",
                              style: const TextStyle(
                                  fontSize: 100,
                                  fontFamily: "cursive",
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          const SizedBox(
                            width: 110,
                            height: 150,
                            child: myRive.RiveAnimation.asset(
                              "assets/Animations/the_plus.riv",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 110,
                            height: 150,
                            child: Center(
                                child: Text(
                              "$value2",
                              style: const TextStyle(
                                  fontSize: 100,
                                  fontFamily: "cursive",
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 4,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                          2,
                                          (rowindex) => Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: List.generate(2,
                                                    (colindex) {
                                                  int position =
                                                      2 * rowindex + colindex;
                                                  return InkWell(
                                                    onTap: () {
                                                      lock
                                                          ? null
                                                          : changeColor(
                                                              optionList[
                                                                  position],
                                                              position);
                                                    },
                                                    child: Container(
                                                      width: 120,
                                                      height: 120,
                                                      decoration: BoxDecoration(
                                                          color: buttonColors[
                                                              position],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.5),
                                                                offset:
                                                                    const Offset(
                                                                        4, 2),
                                                                blurRadius: 3,
                                                                spreadRadius: 2)
                                                          ]),
                                                      child: Center(
                                                          child: Text(
                                                        "${optionList[position]}",
                                                        style: const TextStyle(
                                                            fontFamily:
                                                                "cursive",
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                    ),
                                                  );
                                                }),
                                              )),
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Center(
                                  child: ElevatedButton(
                                      onPressed: (widget.questionCount < 10)
                                          ? () {
                                              devtools.log("$counter");
                                              Navigator.of(context)
                                                  .pushAndRemoveUntil(
                                                MaterialPageRoute(
                                                    builder: (contex) =>
                                                        Question1e(
                                                          questionCount:
                                                              counter,
                                                          difficulty:
                                                              widget.difficulty,
                                                        )),
                                                (route) => false,
                                              );
                                            }
                                          : () {
                                              Navigator.of(context)
                                                  .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const MathsDifficultySelect()),
                                                      (Route<dynamic> route) =>
                                                          route.settings.name!="Question1e");
                                            },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 85, 108, 185),
                                          foregroundColor: Colors.white,
                                          textStyle:
                                              const TextStyle(fontSize: 30),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          minimumSize: const Size(200, 20),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap),
                                      child: (widget.questionCount < 10)
                                          ? const Text("Next")
                                          : const Text("Finish")),
                                )),
                          ],
                        ),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
