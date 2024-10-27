import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/result_page.dart';

import 'package:flutter_application_1/widget/button_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 23;
  double widht = 70;
  int height = 160;
  bool ismale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(252, 3, 1, 40),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(252, 3, 1, 40),
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: (ismale) ? Color.fromARGB(255, 228, 16, 101) : Color.fromARGB(250, 37, 36, 61),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_rounded,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: (ismale) ? Color.fromARGB(250, 37, 36, 61) : Color.fromARGB(255, 228, 16, 101),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_rounded,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(250, 37, 36, 61),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                    activeColor: Color.fromARGB(255, 228, 16, 101),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  )
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(250, 37, 36, 61),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(fontSize: 23, color: Colors.white),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                    });
                                  },
                                  style: IconButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(56, 131, 120, 120),
                                  ),
                                  icon: Icon(Icons.remove),
                                ),
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  style: IconButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(56, 131, 120, 120),
                                  ),
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(250, 37, 36, 61),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Widht",
                              style: TextStyle(fontSize: 23, color: Colors.white),
                            ),
                            Text(
                              widht.toString(),
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      if (widht > 0) {
                                        widht--;
                                      }
                                    });
                                  },
                                  style: IconButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(56, 131, 120, 120),
                                  ),
                                  icon: Icon(Icons.remove),
                                ),
                                IconButton.filled(
                                  onPressed: () {
                                    setState(() {
                                      widht++;
                                    });
                                  },
                                  style: IconButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(56, 131, 120, 120),
                                  ),
                                  icon: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonCustom(
              name: "Calculator",
              onPress: () {
                double heightmeter = height / 100;
                double res = widht / (heightmeter * heightmeter);
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            result: res,
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
