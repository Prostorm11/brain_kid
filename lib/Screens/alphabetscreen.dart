import 'package:flutter/material.dart';

class Alphabetscreen extends StatefulWidget {
  const Alphabetscreen({super.key});

  @override
  State<Alphabetscreen> createState() => _AlphabetscreenState();
}

class _AlphabetscreenState extends State<Alphabetscreen> {
  @override
  Widget build(BuildContext context) {
    List<String>optionImages=["basicletters.png","missingletters.png","spelling.png"];
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset("assets/Images/AlphabetImagebee.png"),
                )),
            Expanded(
                flex: 3,
                child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(3, (index) {
                          return Container(
                            width: 300,
                            height: 200,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 2.0,
                                      offset: const Offset(4, 4),
                                      spreadRadius: 4)
                                ]),
                            child: Column(
                              children: [
                                 Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Image.asset("assets/Images/${optionImages[index]}"),
                                  ),
                                ),
                                Expanded(flex: 1, child: Container(
                                  color: Colors.black,
                                ))
                              ],
                            ),
                          );
                        }),
                      ),
                    ))),
          ],
        ),
      ),
    ));
  }
}
