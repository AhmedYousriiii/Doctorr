import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/home_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.result,
  });
  final double result;

  String getStates() {
    if (result <= 18.4) {
      return "Underweight";
    } else if (result <= 24.9) {
      return " Normal";
    } else if (result <= 39.9) {
      return "Overweight";
    } else {
      return "obese";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(252, 3, 1, 40),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(252, 3, 1, 40),
        foregroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Your result",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: const Color.fromARGB(56, 131, 120, 120),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    getStates(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    result.toStringAsFixed(3),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
