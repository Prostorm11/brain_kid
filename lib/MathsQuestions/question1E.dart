import 'package:flutter/material.dart';
//import 'package:rive/rive.dart';
import "dart:developer" as devtools;

class Question1e extends StatefulWidget {
  const Question1e({super.key});

  @override
  State<Question1e> createState() => _Question1eState();
}

class _Question1eState extends State<Question1e> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    color: Colors.red,
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              width: double.infinity,
                              color: Colors.pink,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      2,
                                      (index) => Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: List.generate(
                                                2,
                                                (index) => Container(
                                                      width: 120,
                                                      height: 120,
                                                      decoration: BoxDecoration(
                                                          color: Colors.amber,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.5),
                                                                offset: const Offset(
                                                                    4, 2),
                                                                blurRadius: 3,
                                                                spreadRadius: 2)
                                                          ]),
                                                    )),
                                          )),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Center(
                              child: ElevatedButton(
                                onPressed: ()=>devtools.log("Pressed"),
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 30),
                                  padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                                  minimumSize: const  Size(200,20),
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap
                                ),
                                  child: const Text("Next")),
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
