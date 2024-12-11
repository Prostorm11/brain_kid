import 'package:flutter/material.dart';

class MathsDifficultySelect extends StatefulWidget {
  const MathsDifficultySelect({super.key});

  @override
  State<MathsDifficultySelect> createState() => _MathsDifficultySelectState();
}

class _MathsDifficultySelectState extends State<MathsDifficultySelect> {
  @override
  Widget build(BuildContext context) {
    List<String> stars = ["OneStar.png", "TwoStars.png", "ThreeStars.png"];
    List<String> difficulty=["Easy","Medium","Difficult"];
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromARGB(255, 245, 255, 154),Color.fromARGB(255, 240, 223, 77), Colors.green],
        begin: Alignment.centerLeft,end: Alignment.bottomRight)),
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
                              (index) => Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                height: 100,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: const Offset(-2, 2))
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
