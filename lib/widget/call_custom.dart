import 'package:flutter/material.dart';

class CallCustom extends StatelessWidget {
  const CallCustom({super.key, required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xffE2F2FE),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(Icons.phone),
          Text(number),
        ],
      ),
    );
  }
}
