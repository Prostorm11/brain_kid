import 'package:flutter/material.dart';
import "dart:developer" as devtools;

class Mathsscreen extends StatefulWidget {
  const Mathsscreen({super.key});

  @override
  State<Mathsscreen> createState() => _MathsscreenState();
}

class _MathsscreenState extends State<Mathsscreen> {
  @override
  Widget build(BuildContext context) {
    //final double width = MediaQuery.of(context).size.width;
    const List<String> images = [
      "add_Image.png",
      "subtract_Image.png",
      "multiply_Image.png",
      "divide_Image.png"
    ];
    const List<String> names = [
      "ADDITION",
      "SUBTRACTION",
      "MULTIPLICATION",
      "DIVISION"
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 233, 247)
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(7, 20, 7, 10),
            child: Column(
              children: [
                const Expanded(
                    flex: 1,
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 80,
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Colors.red,
                              )),
                          SizedBox(
                              width: 140,
                              child: Text(
                                "Select Topic",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )),
                          SizedBox(width: 80)
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                            child: Text(
                              "Recommended Topics For You",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  5,
                                  (index) => Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 2, 15, 2),
                                        width: 150,
                                        height: double.infinity,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                width: double.infinity,
                                                color: Colors.red,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                width: double.infinity,
                                                color: Colors.blue,
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                            ),
                          ))
                        ],
                      ),
                    )),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                            4,
                            (index) => InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: ()=>devtools.log(names[index]),
                              child: Container(
                                width: double.infinity,
                                height: 150,
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.5,
                                    color: const Color.fromARGB(255, 236, 0, 217)
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: ClipRRect(
                                       borderRadius: const BorderRadius.only(
                                        topLeft:  Radius.circular(20),
                                        topRight:  Radius.circular(20)
                                       ),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Image.asset(
                                            "assets/Images/${images[index]}",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 178, 202, 255),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)
                                          )
                                        ),
                                        child: Center(
                                            child: Text(
                                          names[index],
                                          style: const TextStyle(
                                              fontFamily: "cursive",
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
