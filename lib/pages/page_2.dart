import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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

  MaterialColor _createMaterialColor(Color color) {
    final List<double> strengths = <double>[.05];
    final Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (final double strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }

  Future<void> _loadFonts() async {
    await Future.wait([
      FontLoader('MyCustomFont').load(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    Color color_red = Color(0xFFE27D60);
    Color light_green = Color(0xFF85DCB0);
    Color light_brown = Color(0xFFE8A87C);
    Color light_purple = Color(0xFFC38D9E);
    Color color_green = Color(0xFF41B3A3);
    Color background_color = Color(0xFF7DC2AE);

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: _locale,
      theme: ThemeData(primarySwatch: _createMaterialColor(background_color)),
      home: FutureBuilder(
        future: _loadFonts(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Fonts are loaded, continue building your app
            return MyPage2();
          } else {
            // Fonts are still loading, show a loading indicator or splash screen
            return CircularProgressIndicator();
          }
        },
      ),
    );
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
    Color color_red = Color.fromRGBO(255, 101, 195, 1.0);
    Color light_green = Color.fromRGBO(159, 236, 64, 1);
    Color light_brown = Color.fromRGBO(250, 215, 74, 1);
    Color light_purple = Color.fromRGBO(203, 107, 230, 1.0);
    Color color_green = Color.fromRGBO(92, 225, 230, 1.0);

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/7.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
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
                        AppLocalizations.of(context)!.appleDes,
                        "Apple.png",
                        light_brown),
                    getFruitPageDecoration(
                        1,
                        AppLocalizations.of(context)!.banana,
                        AppLocalizations.of(context)!.bananaDes,
                        "Banana.png",
                        color_green),
                    getFruitPageDecoration(
                        2,
                        AppLocalizations.of(context)!.beetroot,
                        AppLocalizations.of(context)!.beetrootDes,
                        "Beetroot.png",
                        light_green),
                    getFruitPageDecoration(
                        3,
                        AppLocalizations.of(context)!.bellpepper,
                        AppLocalizations.of(context)!.bellPepperDes,
                        "Bell Pepper.png",
                        light_brown),
                    getFruitPageDecoration(
                        4,
                        AppLocalizations.of(context)!.cabbage,
                        AppLocalizations.of(context)!.cabbageDes,
                        "Cabbage.png",
                        light_purple),
                    getFruitPageDecoration(
                        5,
                        AppLocalizations.of(context)!.capsicum,
                        AppLocalizations.of(context)!.capsicumDes,
                        "Capsicum.png",
                        color_red),
                    getFruitPageDecoration(
                        6,
                        AppLocalizations.of(context)!.carrot,
                        AppLocalizations.of(context)!.carrotDes,
                        "Carrot.png",
                        color_green),
                    getFruitPageDecoration(
                        7,
                        AppLocalizations.of(context)!.cauliflower,
                        AppLocalizations.of(context)!.cauliflowerDes,
                        "Cauliflower.png",
                        light_brown),
                    getFruitPageDecoration(
                        8,
                        AppLocalizations.of(context)!.chillipepper,
                        AppLocalizations.of(context)!.chilliPepperDes,
                        "ChilliPepper.png",
                        light_green),
                    getFruitPageDecoration(
                        9,
                        AppLocalizations.of(context)!.corn,
                        AppLocalizations.of(context)!.cornDes,
                        "Corn.png",
                        color_red),
                    getFruitPageDecoration(
                        10,
                        AppLocalizations.of(context)!.cucumber,
                        AppLocalizations.of(context)!.cucumberDes,
                        "Cucumber.png",
                        light_purple),
                    getFruitPageDecoration(
                        11,
                        AppLocalizations.of(context)!.eggplant,
                        AppLocalizations.of(context)!.eggplantDes,
                        "Eggplant.png",
                        light_green),
                    getFruitPageDecoration(
                        12,
                        AppLocalizations.of(context)!.garlic,
                        AppLocalizations.of(context)!.garlicDes,
                        "Garlic.png",
                        color_green),
                    getFruitPageDecoration(
                        13,
                        AppLocalizations.of(context)!.ginger,
                        AppLocalizations.of(context)!.gingerDes,
                        "Ginger.png",
                        color_red),
                    getFruitPageDecoration(
                        14,
                        AppLocalizations.of(context)!.grapes,
                        AppLocalizations.of(context)!.grapesDes,
                        "Grape.png",
                        light_brown),
                    getFruitPageDecoration(
                        15,
                        AppLocalizations.of(context)!.jalepeno,
                        AppLocalizations.of(context)!.jalepenoDes,
                        "Jalepeno.png",
                        light_purple),
                    getFruitPageDecoration(
                        16,
                        AppLocalizations.of(context)!.kiwi,
                        AppLocalizations.of(context)!.kiwiDes,
                        "Kiwi.png",
                        light_green),
                    getFruitPageDecoration(
                        17,
                        AppLocalizations.of(context)!.lemon,
                        AppLocalizations.of(context)!.lemonDes,
                        "Lemon.png",
                        color_green),
                    getFruitPageDecoration(
                        18,
                        AppLocalizations.of(context)!.lettuce,
                        AppLocalizations.of(context)!.lettuceDes,
                        "Lettuce.png",
                        light_purple),
                    getFruitPageDecoration(
                        19,
                        AppLocalizations.of(context)!.mango,
                        AppLocalizations.of(context)!.mangoDes,
                        "Mango.png",
                        light_brown),
                    getFruitPageDecoration(
                        20,
                        AppLocalizations.of(context)!.onion,
                        AppLocalizations.of(context)!.onionDes,
                        "Onion.png",
                        light_green),
                    getFruitPageDecoration(
                        21,
                        AppLocalizations.of(context)!.orange,
                        AppLocalizations.of(context)!.orangeDes,
                        "Orange.png",
                        light_brown),
                    getFruitPageDecoration(
                        22,
                        AppLocalizations.of(context)!.paprika,
                        AppLocalizations.of(context)!.paprikaDes,
                        "Paprika.png",
                        light_purple),
                    getFruitPageDecoration(
                        23,
                        AppLocalizations.of(context)!.pear,
                        AppLocalizations.of(context)!.pearDes,
                        "Pear.png",
                        color_green),
                    getFruitPageDecoration(
                        24,
                        AppLocalizations.of(context)!.peas,
                        AppLocalizations.of(context)!.peasDes,
                        "Peas.png",
                        color_red),
                    getFruitPageDecoration(
                        25,
                        AppLocalizations.of(context)!.pineapple,
                        AppLocalizations.of(context)!.pineappleDes,
                        "Pineapple.png",
                        light_green),
                    getFruitPageDecoration(
                        26,
                        AppLocalizations.of(context)!.pomegranate,
                        AppLocalizations.of(context)!.pomegranateDes,
                        "Pomegranate.png",
                        light_purple),
                    getFruitPageDecoration(
                        27,
                        AppLocalizations.of(context)!.potato,
                        AppLocalizations.of(context)!.potatoDes,
                        "Potato.png",
                        light_brown),
                    getFruitPageDecoration(
                        28,
                        AppLocalizations.of(context)!.raddish,
                        AppLocalizations.of(context)!.radishDes,
                        "Raddish.png",
                        color_green),
                    getFruitPageDecoration(
                        29,
                        AppLocalizations.of(context)!.soybeans,
                        AppLocalizations.of(context)!.soybeansDes,
                        "SoyBeans.png",
                        color_red),
                    getFruitPageDecoration(
                        30,
                        AppLocalizations.of(context)!.spinach,
                        AppLocalizations.of(context)!.spinachDes,
                        "Spinach.png",
                        light_brown),
                    getFruitPageDecoration(
                        31,
                        AppLocalizations.of(context)!.sweetcorn,
                        AppLocalizations.of(context)!.sweetcornDes,
                        "Sweetcorn.png",
                        light_green),
                    getFruitPageDecoration(
                        32,
                        AppLocalizations.of(context)!.sweetpotato,
                        AppLocalizations.of(context)!.sweetpotatoDes,
                        "Sweetpotato.png",
                        color_red),
                    getFruitPageDecoration(
                        33,
                        AppLocalizations.of(context)!.tomato,
                        AppLocalizations.of(context)!.tomatoDes,
                        "Tomato.png",
                        color_green),
                    getFruitPageDecoration(
                        34,
                        AppLocalizations.of(context)!.turnip,
                        AppLocalizations.of(context)!.turnipDes,
                        "Turnip.png",
                        light_green),
                    getFruitPageDecoration(
                        35,
                        AppLocalizations.of(context)!.watermelon,
                        AppLocalizations.of(context)!.watermelonDes,
                        "Watermelon.png",
                        light_brown),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container getFruitPageDecoration(
      int id, String name, String description, String image, Color colorx) {
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
                    builder: (context) =>
                        FruitPage(fruitID: id, colorFruit: colorx),
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
                              image: AssetImage('assets/fruit_logo/' + image),
                              height: MediaQuery.of(context).size.height / 6,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 500,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      color: Colors.yellow[700],
                                      border: Border.all(
                                        color: Colors
                                            .white30, // Set the color of the border
                                        width: 4, // Set the width of the border
                                      ),
                                    ),
                                    child: Text(
                                      name,
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: 'MyCustomFont',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        letterSpacing: 2.0,
                                        wordSpacing: 2.0,
                                      ),
                                    ),
                                  ),
                                  margin: EdgeInsets.only(top: 20, left: 140),
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 500,
                                  ),
                                  child: Text(
                                    description,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(top: 10, left: 150),
                                ),
                              ],
                            ),
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
