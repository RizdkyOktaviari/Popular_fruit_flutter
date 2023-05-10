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
          shape: StadiumBorder(),
          primary: Theme.of(context).primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
        child: Text(text,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Roboto',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              wordSpacing: 2.0,
            )),
        onPressed: onClicked,
      );
}
