import 'package:flutter/material.dart';
import 'sign-up-screen-1.dart';
class FruitDetail extends StatelessWidget {
  final String stage;
  

  const FruitDetail({Key? key, required this.stage}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
			child: Scene(stage: stage,),
		),
    );
  }
}
