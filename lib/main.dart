
import 'package:firstapp/pages/reviews.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const doctor());
}

class doctor extends StatelessWidget {
  const doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyReviews(),
    );
  }
}
