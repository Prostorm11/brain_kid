import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ScrollController _scrollController = ScrollController();
  late int _middleIndex = -1;
  List<String> ages = ["", "", "1", "2", "3", "4", "5", "6", "", ""];
  String sexSelect = "Boy";

  @override
  void initState() {
    _scrollController.addListener(setColor);
    super.initState();
  }

  void sexChange(String sex) {
    setState(() {
      sexSelect = sex;
    });
  }

  void setColor() {
    double scrollCenter =
        _scrollController.offset + MediaQuery.of(context).size.width / 2;

    for (int i = 0; i < ages.length; i++) {
      double itemStart = i * 75;
      double itemEnd = itemStart + 60;

      if (scrollCenter >= itemStart && scrollCenter <= itemEnd) {
        setState(() {
          _middleIndex = i;
        });
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.18,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          child: Center(
                            child: Text(
                              "Create Profile",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(clipBehavior: Clip.none, children: [
                              InkWell(
                                onTap: () {
                                  sexChange("Boy");
                                },
                                borderRadius: sexSelect == "Boy"
                                    ? BorderRadius.circular(28)
                                    : BorderRadius.circular(20),
                                child: Container(
                                  height: sexSelect == "Boy"
                                      ? height * 0.1
                                      : height * 0.07,
                                  width: width * 0.35,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(28, 31, 218, 1),
                                      borderRadius: sexSelect == "Boy"
                                          ? BorderRadius.circular(28)
                                          : BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                            "assets/Images/boy.png"),
                                      ),
                                      const Text(
                                        "Boy",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: -12,
                                  right: -12,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: sexSelect == "Boy"
                                        ? const Icon(
                                            Icons.verified,
                                            color: Colors.green,
                                          )
                                        : null,
                                  ))
                            ]),
                            Stack(clipBehavior: Clip.none, children: [
                              InkWell(
                                onTap: () {
                                  sexChange("Girl");
                                },
                                borderRadius: sexSelect == "Girl"
                                    ? BorderRadius.circular(28)
                                    : BorderRadius.circular(20),
                                child: Container(
                                  height: sexSelect == "Girl"
                                      ? height * 0.1
                                      : height * 0.07,
                                  width: width * 0.35,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(221, 35, 59, 1),
                                      borderRadius: sexSelect == "Girl"
                                          ? BorderRadius.circular(28)
                                          : BorderRadius.circular(20)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                            "assets/Images/girl.png"),
                                      ),
                                      const Text(
                                        "Girl",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: -12,
                                  right: -12,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: sexSelect == "Girl"
                                        ? const Icon(
                                            Icons.verified,
                                            color: Colors.green,
                                          )
                                        : null,
                                  ))
                            ])
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.57,
                  child: Image.asset("assets/Images/pbackground.jpg"),
                ),
                SizedBox(
                  height: height * 0.17,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Your Age",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        // Make sure ListView has room to expand
                        flex: 2,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _scrollController,
                          itemCount: ages.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(5),
                              width: 60,
                              child: Center(
                                child: Text(
                                  ages[index],
                                  style: TextStyle(
                                    fontSize: _middleIndex == index ? 34 : 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(210, 36, 36, 1),
                              minimumSize: const Size(250, 50)),
                          onPressed: () {},
                          child: const Text(
                            "Save",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ))
                    ],
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
