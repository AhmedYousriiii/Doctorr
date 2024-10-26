import 'package:flutter/material.dart';

class ReviewCustom extends StatelessWidget {
  const ReviewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.white,
                offset: Offset(5, 5),
              )
            ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(
                        "asset/image/GMY02605.JPG",
                        width: 100,
                        height: 120,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Coffee Table",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 127, 125, 125),
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          " 50.00",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 45, 44, 44),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      Spacer(),
                      Text("22/10/2024"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Nice furniture with good delivery .the delivery time is very fast",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
