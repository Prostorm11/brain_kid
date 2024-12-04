import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  height: height * 0.15,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back),
                            Text(
                              "Create Profile",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.07,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(28, 31, 218, 1),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    child: Image.asset("assets/Images/boy.png"),
                                  ),
                                  const Text("Boy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.07,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(221, 35, 59, 1),
                                  borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    child: Image.asset("assets/Images/girl.png"),
                                  ),
                                  const Text("Girl",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),



                Container(
                  color: Colors.red,
                  height: height * 0.55,
                ),


                
                Container(
                  color: Colors.orange,
                  height: height * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
