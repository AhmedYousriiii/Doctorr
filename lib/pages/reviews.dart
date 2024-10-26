import 'package:firstapp/widget/reviews_custom.dart';
import 'package:flutter/material.dart';

class MyReviews extends StatelessWidget {
  const MyReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 243, 240, 240),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "My reviews",
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          ReviewCustom(),
          SizedBox(
            height: 20,
          ),
          ReviewCustom(),
        ],
      ),
    );
  }
}
