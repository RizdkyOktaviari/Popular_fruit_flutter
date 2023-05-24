import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_ppf/models/FruitDetailModel.dart';
import 'page_1.dart';

class FruitPage extends StatefulWidget {
  const FruitPage({Key? key, required this.fruitID, required this.colorFruit})
      : super(key: key);
  final int fruitID;
  final Color colorFruit;
  @override
  _FruitPageState createState() => _FruitPageState(fruitID, colorFruit);
}

class _FruitPageState extends State<FruitPage> {
  Locale? _locale;
  final int fruitID;
  Color colorFruit;
  _FruitPageState(this.fruitID, this.colorFruit);

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

  void navigateBack() {
    // Perform navigation logic here
    Navigator.pop(context);
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
            return MyFruitPage(
                colorFruit: colorFruit,
                fruitID: fruitID,
                navigateBack: navigateBack);
          } else {
            // Fonts are still loading, show a loading indicator or splash screen
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class MyFruitPage extends StatefulWidget {
  const MyFruitPage(
      {Key? key,
      required this.fruitID,
      required this.navigateBack,
      required this.colorFruit})
      : super(key: key);
  final int fruitID;
  final colorFruit;
  final VoidCallback navigateBack;

  @override
  _MyFruitPageState createState() => _MyFruitPageState(fruitID);
}

class _MyFruitPageState extends State<MyFruitPage> {
  final int fruitID;

  _MyFruitPageState(this.fruitID);

  @override
  Widget build(BuildContext context) {
    String name = '';
    String description = '';
    String benefit = '';
    String fruitcolor = '';
    if (AppLocalizations.of(context)!.language == "English") {
      name = fruitDetails[fruitID].fruitname;
      description = fruitDetails[fruitID].description;
      benefit = fruitDetails[fruitID].benefit;
      fruitcolor = fruitDetails[fruitID].fruitcolor;
    } else if (AppLocalizations.of(context)!.language == "Malay") {
      name = fruitDetails[fruitID].fruitnamems;
      description = fruitDetails[fruitID].descriptionms;
      benefit = fruitDetails[fruitID].benefitms;
      fruitcolor = fruitDetails[fruitID].fruitcolorms;
    } else {
      name = fruitDetails[fruitID].fruitnameid;
      description = fruitDetails[fruitID].descriptionid;
      benefit = fruitDetails[fruitID].benefitid;
      fruitcolor = fruitDetails[fruitID].fruitcolorid;
    }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              widget.navigateBack();
            },
          ),
          title: Text(
            AppLocalizations.of(context)!.fruitdetails,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Chewy',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              wordSpacing: 2.0,
            ),
          ),
          centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/7.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: size.height / 2.5,
                width: size.width / 1.1,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: widget.colorFruit,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 40),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Hero(
                              tag: fruitID,
                              child: Image(
                                image: AssetImage('assets/fruit_logo/' +
                                    fruitDetails[fruitID].image),
                                height: MediaQuery.of(context).size.height / 3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.yellow[700],
                          border: Border.all(
                            color:
                                Colors.white30, // Set the color of the border
                            width: 4, // Set the width of the border
                          ),
                        ),
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: 'MyCustomFont',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2.0,
                            wordSpacing: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          description,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Kalam',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.yellow[700],
                          border: Border.all(
                            color:
                                Colors.white30, // Set the color of the border
                            width: 4, // Set the width of the border
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.benefit,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'MyCustomFont',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2.0,
                            wordSpacing: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          benefit,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Kalam',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.yellow[700],
                          border: Border.all(
                            color:
                                Colors.white30, // Set the color of the border
                            width: 4, // Set the width of the border
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.colorss,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'MyCustomFont',
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2.0,
                            wordSpacing: 2.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              fruitcolor,
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Kalam',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: widget.colorFruit,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            padding: EdgeInsets.all(7),
                            child: GestureDetector(
                              onTap: () {
                                widget.navigateBack();
                              },
                              child: Text(
                                AppLocalizations.of(context)!.mores,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Kalam',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
