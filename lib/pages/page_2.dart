import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Learn Fruits',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                wordSpacing: 2.0,
              )),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            getFruitPageDecoration(
                0,
                "Apple",
                "Apple is a Red Fruitaaaaaaaaaaaaaaaaaaaaaaaaa",
                "Apple.png",
                Colors.red.shade300,
                80,
                155),
            getFruitPageDecoration(1, "Banana", "Banana is a Yellow Fruit",
                "Apple.png", Colors.yellow.shade300, 100, 155),
            getFruitPageDecoration(2, "Orange", "Orange is a Orange Fruit",
                "Apple.png", Colors.orange.shade300, 100, 155),
            getFruitPageDecoration(3, "Grapes", "Grapes is a Purple Fruit",
                "Apple.png", Colors.purple.shade300, 80, 155),
            getFruitPageDecoration(
                4,
                "Watermelon",
                "Watermelon is a Green Fruit",
                "Apple.png",
                Colors.green.shade300,
                80,
                155),
            getFruitPageDecoration(5, "Strawberry", "Strawberry is a Red Fruit",
                "Apple.png", Colors.red.shade300, 80, 155),
          ],
        ));
  }

  Container getFruitPageDecoration(int id, String name, String description,
      String image, Color colorx, double leftname, double leftdescription) {
    return Container(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: colorx,
          ),
          margin: EdgeInsets.only(top: 25, left: 75, right: 15),
          child: Transform.translate(
            offset: Offset(-75, 0),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -20,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage('assets/erased_logo/' + image),
                      height: MediaQuery.of(context).size.height / 5.5,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                            ),
                            child: Text(
                              name,
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                wordSpacing: 2.0,
                              ),
                            ),
                            margin: EdgeInsets.only(top: 20, left: leftname),
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                            ),
                            child: Text(
                              description,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                wordSpacing: 2.0,
                              ),
                            ),
                            margin: EdgeInsets.only(left: leftdescription),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
