import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 245, 240, 116),
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
        child: Text(text,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'MyCustomFont',
              color: Color.fromARGB(255, 151, 209, 50),
              fontWeight: FontWeight.normal,
              letterSpacing: 1.0,
              wordSpacing: 1.0,
            )),
        onPressed: onClicked,
      );
}
