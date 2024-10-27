import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
    required this.name, required this.onPress,
  });
  final String name;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed:onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 228, 16, 101),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          name,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
