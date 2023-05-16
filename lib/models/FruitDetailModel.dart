import 'package:flutter/material.dart';

class fruitdetails {
  final String image, fruitname, title, description, fruitcolor, benefit;
  final int id;
  final Color colorr;

  fruitdetails({
    required this.id,
    required this.image,
    required this.fruitname,
    required this.title,
    required this.description,
    required this.fruitcolor,
    required this.benefit,
    required this.colorr,
  });
}

List<fruitdetails> fruitDetails = [
  fruitdetails(
    id: 1,
    image: "Apple.png",
    fruitname: "Apple",
    title: "Apple",
    description:
        "Apple is a Red Fruitasddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
    fruitcolor: "Red",
    benefit: "Apple is a Red Fruit",
    colorr: Colors.red.shade300,
  ),
  fruitdetails(
    id: 2,
    image: "assets/fruit_logo/banana.jpg",
    fruitname: "Banana",
    title: "Banana",
    description: "Banana is a Yellow Fruit",
    fruitcolor: "Yellow",
    benefit: "Banana is a Yellow Fruit",
    colorr: Colors.yellow.shade300,
  ),
  fruitdetails(
    id: 3,
    image: "assets/fruit_logo/orange.jpg",
    fruitname: "Orange",
    title: "Orange",
    description: "Orange is a Orange Fruit",
    fruitcolor: "Orange",
    benefit: "Orange is a Orange Fruit",
    colorr: Colors.orange.shade300,
  ),
  fruitdetails(
    id: 4,
    image: "assets/fruit_logo/grapes.jpg",
    fruitname: "Grapes",
    title: "Grapes",
    description: "Grapes is a Purple Fruit",
    fruitcolor: "Purple",
    benefit: "Grapes is a Purple Fruit",
    colorr: Colors.purple.shade300,
  ),
  fruitdetails(
    id: 5,
    image: "assets/fruit_logo/watermelon.jpg",
    fruitname: "Watermelon",
    title: "Watermelon",
    description: "Watermelon is a Green Fruit",
    fruitcolor: "Green",
    benefit: "Watermelon is a Green Fruit",
    colorr: Colors.green.shade300,
  ),
  fruitdetails(
    id: 6,
    image: "assets/fruit_logo/strawberry.jpg",
    fruitname: "Strawberry",
    title: "Strawberry",
    description: "Strawberry is a Red Fruit",
    fruitcolor: "Red",
    benefit: "Strawberry is a Red Fruit",
    colorr: Colors.red.shade300,
  ),
];
