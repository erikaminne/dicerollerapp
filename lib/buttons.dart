import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final String buttonImage;
  final VoidCallback buttonTapped;

  const MyButton({
    super.key,
    required this.buttonText,
    required this.buttonImage,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      color: const Color.fromARGB(255, 0, 0, 0),
      child: ListView(
        children: [
          Column(
            children: [
              IconButton(
                onPressed: buttonTapped,
                icon: Image.asset(buttonImage),
              ),
              Text(
                buttonText,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
