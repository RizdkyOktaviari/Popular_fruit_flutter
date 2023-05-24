import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/6.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text("Coming Soon",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                wordSpacing: 2.0,
              )),
        ),
      ),
    );
  }
}
