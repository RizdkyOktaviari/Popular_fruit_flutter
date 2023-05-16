import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'FruitPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    loadSavedLocale();
  }

  Future<void> loadSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode') ?? 'en';
    setState(() {
      _locale = Locale(languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        locale: _locale,
        theme: ThemeData(primarySwatch: Colors.green),
        home: MyPage2());
  }
}

class MyPage2 extends StatefulWidget {
  const MyPage2({super.key});

  @override
  State<MyPage2> createState() => _MyPage2State();
}

class _MyPage2State extends State<MyPage2> {
  bool isScrolling = false;
  double direction = 0;

  late ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = ScrollController();
    super.initState();
  }

  _onStartScroll(ScrollMetrics metrics) {
    setState(() {
      if (_controller.position.userScrollDirection == ScrollDirection.forward) {
        direction = 0.2;
      } else if (_controller.position.userScrollDirection ==
          ScrollDirection.reverse) {
        direction = -0.2;
      } else {
        direction = 0.0;
      }
      isScrolling = true;
    });
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    setState(() {
      if (_controller.position.userScrollDirection == ScrollDirection.forward) {
        direction = 0.2;
      } else if (_controller.position.userScrollDirection ==
          ScrollDirection.reverse) {
        direction = -0.2;
      } else {
        direction = 0.0;
      }
      isScrolling = true;
    });
  }

  _onEndScroll(ScrollMetrics metrics) {
    setState(() {
      direction = 0.0;
      isScrolling = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.learnfruits,
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollStartNotification) {
                  _onStartScroll(scrollNotification.metrics);
                } else if (scrollNotification is ScrollEndNotification) {
                  _onEndScroll(scrollNotification.metrics);
                } else if (scrollNotification is ScrollUpdateNotification) {
                  _onUpdateScroll(scrollNotification.metrics);
                }
                return true;
              },
              child: ListView(
                controller: _controller,
                children: <Widget>[
                  getFruitPageDecoration(
                      0,
                      AppLocalizations.of(context)!.apple,
                      "Apple is a Red Fruitaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "Apple.png",
                      Colors.red.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                      1,
                      AppLocalizations.of(context)!.banana,
                      "Banana is a Yellow Fruit",
                      "Apple.png",
                      Colors.yellow.shade300,
                      100,
                      155),
                  getFruitPageDecoration(
                    2,
                    AppLocalizations.of(context)!.beetroot,
                    "Beetroot is a Red Fruit",
                    "Apple.png",
                    Colors.red.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    3,
                    AppLocalizations.of(context)!.bellpepper,
                    "Bell Pepper is a Red Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    4,
                    AppLocalizations.of(context)!.cabbage,
                    "Cabbage is a Green Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    5,
                    AppLocalizations.of(context)!.capsicum,
                    "Capsicum is a Green Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    6,
                    AppLocalizations.of(context)!.carrot,
                    "Carrot is a Orange Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    7,
                    AppLocalizations.of(context)!.cauliflower,
                    "Cauliflower is a White Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    8,
                    AppLocalizations.of(context)!.chillipepper,
                    "Chilli is a Green Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    9,
                    AppLocalizations.of(context)!.corn,
                    "Corn is a Yellow Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    10,
                    AppLocalizations.of(context)!.cucumber,
                    "Cucumber is a Green Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    11,
                    AppLocalizations.of(context)!.eggplant,
                    "Eggplant is a Purple Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    12,
                    AppLocalizations.of(context)!.garlic,
                    "Garlic is a White Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    13,
                    AppLocalizations.of(context)!.ginger,
                    "Ginger is a Brown Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    14,
                    AppLocalizations.of(context)!.grapes,
                    "Grapes is a Purple Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    15,
                    AppLocalizations.of(context)!.jalepeno,
                    "Jalepeno is a Green Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    16,
                    AppLocalizations.of(context)!.kiwi,
                    "Kiwi is a Brown Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    17,
                    AppLocalizations.of(context)!.lemon,
                    "Lemon is a Yellow Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    18,
                    AppLocalizations.of(context)!.lettuce,
                    "Lettuce is a Green Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    19,
                    AppLocalizations.of(context)!.mango,
                    "Mango is a Yellow Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    20,
                    AppLocalizations.of(context)!.onion,
                    "Onion is a White Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                    21,
                    AppLocalizations.of(context)!.orange,
                    "Orange is a Orange Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                      22,
                      AppLocalizations.of(context)!.paprika,
                      "Paprika is a Red Vegetable",
                      "Apple.png",
                      Colors.red.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                    23,
                    AppLocalizations.of(context)!.pear,
                    "Pear is a Green Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                      24,
                      AppLocalizations.of(context)!.peas,
                      "Peas is a Green Vegetable",
                      "Apple.png",
                      Colors.blue.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                    25,
                    AppLocalizations.of(context)!.pineapple,
                    "Pineapple is a Yellow Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                      26,
                      AppLocalizations.of(context)!.pomegranate,
                      "Pomegranate is a Red Fruit",
                      "Apple.png",
                      Colors.red.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                    27,
                    AppLocalizations.of(context)!.potato,
                    "Potato is a Brown Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                      28,
                      AppLocalizations.of(context)!.raddish,
                      "Raddish is a Red Vegetable",
                      "Apple.png",
                      Colors.blue.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                    29,
                    AppLocalizations.of(context)!.soybeans,
                    "Soy beans is a Brown Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                      30,
                      AppLocalizations.of(context)!.spinach,
                      "Spinach is a Green Vegetable",
                      "Apple.png",
                      Colors.blue.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                    31,
                    AppLocalizations.of(context)!.sweetcorn,
                    "Sweet Corn is a Yellow Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                      32,
                      AppLocalizations.of(context)!.sweetpotato,
                      "Sweet Potato is a Brown Vegetable",
                      "Apple.png",
                      Colors.blue.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                    33,
                    AppLocalizations.of(context)!.tomato,
                    "Tomato is a Red Vegetable",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  getFruitPageDecoration(
                      34,
                      AppLocalizations.of(context)!.turnip,
                      "Turnip is a White Vegetable",
                      "Apple.png",
                      Colors.blue.shade300,
                      80,
                      155),
                  getFruitPageDecoration(
                    35,
                    AppLocalizations.of(context)!.watermelon,
                    "Watermelon is a Green Fruit",
                    "Apple.png",
                    Colors.blue.shade300,
                    80,
                    155,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container getFruitPageDecoration(int id, String name, String description,
      String image, Color colorx, double leftname, double leftdescription) {
    return Container(
      child: TweenAnimationBuilder(
        tween: Tween(
          begin: isScrolling ? 0.0 : direction,
          end: isScrolling ? direction : 0.0,
        ),
        duration: Duration(milliseconds: 200),
        builder: (_, double rotation, _child) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.01)
              ..rotateX(rotation),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FruitPage(fruitID: id),
                  ),
                );
              },
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
                          child: Hero(
                            tag: id,
                            child: Image(
                              image: AssetImage('assets/erased_logo/' + image),
                              height: MediaQuery.of(context).size.height / 5.5,
                            ),
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
                                  margin:
                                      EdgeInsets.only(top: 20, left: leftname),
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
                                  margin:
                                      EdgeInsets.only(left: leftdescription),
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
        },
      ),
    );
  }
}
