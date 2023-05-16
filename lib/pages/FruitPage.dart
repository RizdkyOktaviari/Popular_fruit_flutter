import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_ppf/models/FruitDetailModel.dart';

class FruitPage extends StatefulWidget {
  const FruitPage({Key? key, required this.fruitID}) : super(key: key);
  final int fruitID;

  @override
  _FruitPageState createState() => _FruitPageState(fruitID);
}

class _FruitPageState extends State<FruitPage> {
  Locale? _locale;
  final int fruitID;

  _FruitPageState(this.fruitID);

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        locale: _locale,
        theme: ThemeData(primarySwatch: Colors.green),
        home: MyFruitPage(fruitID: fruitID, navigateBack: navigateBack));
  }
}

class MyFruitPage extends StatefulWidget {
  const MyFruitPage(
      {Key? key, required this.fruitID, required this.navigateBack})
      : super(key: key);
  final int fruitID;
  final VoidCallback navigateBack;

  @override
  _MyFruitPageState createState() => _MyFruitPageState(fruitID);
}

class _MyFruitPageState extends State<MyFruitPage> {
  final int fruitID;

  _MyFruitPageState(this.fruitID);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: fruitDetails[fruitID].colorr,
                borderRadius: BorderRadius.only(
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
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 40,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            widget.navigateBack();
                          },
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        padding: EdgeInsets.all(20),
                        child: Container(
                          padding: EdgeInsets.only(top: 40),
                          child: Hero(
                            tag: fruitID,
                            child: Image(
                              image: AssetImage('assets/erased_logo/' +
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
              margin: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Apple",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Chewy',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        wordSpacing: 2.0,
                      ),
                    ),
                    Text(
                      fruitDetails[fruitID].description,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Kalam',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Benefit",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Chewy',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        wordSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      fruitDetails[fruitID].benefit,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Kalam',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Color",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Chewy',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        wordSpacing: 2.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          fruitDetails[fruitID].fruitcolor,
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Kalam',
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: fruitDetails[fruitID].colorr,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Text(
                            "More",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Kalam',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
