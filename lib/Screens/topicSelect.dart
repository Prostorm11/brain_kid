import 'package:brain_kid/Screens/maths_difficulty_select.dart';
import 'package:flutter/material.dart';
import "dart:developer" as devtools;

class Topicselect extends StatefulWidget {
  final List<String> images;
  final List<String> names;

  const Topicselect({super.key, required this.images, required this.names});
  @override
  State<Topicselect> createState() => _TopicselectState();
}

class _TopicselectState extends State<Topicselect> {
  @override
  Widget build(BuildContext context) {
    final images = widget.images;
    final names = widget.names;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 240, 255, 240),
                Color.fromARGB(255, 255, 223, 240)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Column(
              children: [
                // Header Row
                 Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: ()=>Navigator.of(context).pop(),
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      const Text(
                        "Select Topic",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Arial",
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                      ),
                      const SizedBox(width: 30),
                    ],
                  ),
                ),

                // Recommended Topics Section
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Recommended Topics For You",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 80, 80, 150),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              5,
                              (index) => InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                      colors: [Colors.pink, Colors.purple],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4,
                                        offset: Offset(2, 4),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                            color: Colors.red,
                                          ),
                                          child: Image.asset(
                                              "assets/Images/addSign.png"),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                          child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Topic",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Categoty:",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Topics List Section
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                          images.length,
                          (index) => InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              devtools.log(names[index]);
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MathsDifficultySelect()));
                            } ,
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              margin: const EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: Colors.purpleAccent,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(3, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        "assets/Images/${images[index]}",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: Colors.pinkAccent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          names[index],
                                          style: const TextStyle(
                                            fontFamily: "Roboto",
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
