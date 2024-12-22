import 'package:brain_kid/Constants/constant.dart';
//import 'package:brain_kid/Screens/mathsscreen.dart';
import 'package:brain_kid/Screens/topicSelect.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE3F2FD), // Light Blue
              Color(0xFFFFFDE7), // Light Yellow
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: Center(
                        child: Image.asset(
                      "assets/Images/lionImage.png",
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    )),
                  )),
              const Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        child: Center(
                          child: Text(
                            "Good Morning",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Center(
                          child: Text(
                            "Kofi",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 6,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Topicselect(
                                            images: imagesNum,
                                            names: namesNum,
                                          ))),
                              child: Container(
                                height: 160,
                                width: 145,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 154, 201, 255),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 154, 201, 255)
                                              .withOpacity(0.3),
                                          spreadRadius: 2,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        child: Center(
                                          child: Image.asset(
                                              "assets/Images/numbersImage.png"),
                                        ),
                                      ),
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          child: Text(
                                            "Numbers",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 67, 160, 70)),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const Topicselect(
                                          images: imagesAlp, names: namesAlp))),
                              child: Container(
                                height: 160,
                                width: 145,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 209, 172),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 255, 209, 172)
                                              .withOpacity(0.3),
                                          spreadRadius: 2,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        child: Center(
                                          child: Image.asset(
                                              "assets/Images/lettersImage.png"),
                                        ),
                                      ),
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          child: Text("Alphabet",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red)),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                devtools.log("Shapes");
                              },
                              child: Container(
                                height: 160,
                                width: 145,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 227, 204),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              const Color.fromARGB(255, 255, 227, 204)
                                                  .withOpacity(0.3),
                                          spreadRadius: 2,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        child: Center(
                                          child: Image.asset(
                                              "assets/Images/shapesImage.png"),
                                        ),
                                      ),
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          child: Text("Shapes",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 250, 192, 0))),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                devtools.log("Animals");
                              },
                              child: Container(
                                height: 160,
                                width: 145,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 197, 215, 253),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              const Color.fromARGB(255, 197, 215, 253)
                                                  .withOpacity(0.3),
                                          spreadRadius: 2,
                                          offset: const Offset(2, 2))
                                    ]),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        child: Center(
                                          child: Image.asset(
                                              "assets/Images/animalImage.png"),
                                        ),
                                      ),
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          child: Text("Animals",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 64, 123, 251))),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
