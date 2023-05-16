import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_ppf/utils.dart';
import 'Fruit_detail.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_ppf/models/FruitDataModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key, required this.stage}) : super(key: key);
  final String stage;

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
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
        home: MyScanPage(
          stage: "potato",
        ));
  }
}

class MyScanPage extends StatelessWidget {
  final String stage;
  MyScanPage({required this.stage});

  static List<String> fruitname = [
    'Apple',
    'banana',
    'beetroot',
    'bell pepper',
    'cabbage',
    'capsicum',
    'carrot',
    'cauliflower',
    'chilli pepper',
    'corn',
    'cucumber',
    'eggplant',
    'garlic',
    'ginger',
    'grapes',
    'jalepeno',
    'kiwi',
    'lemon',
    'lettuce',
    'mango',
    'onion',
    'orange',
    'paprika',
    'pear',
    'peas',
    'pineapple',
    'pomegranate',
    'potato',
    'raddish',
    'soy beans',
    'spinach',
    'sweetcorn',
    'sweetpotato',
    'tomato',
    'turnip',
    'watermelon'
  ];
  static List<String> description = [
    'Apple is one of the fruits of God\'s creation. It is a fruit that is very good for health. It is a fruit that is very good for health. It is a fruit that is very good for health. It is a fruit that is very good for health.',
    'Banana is one of the fruits of God\'s creation. It is a fruit that is very good for health. It is a fruit that is very good for health. It is a fruit that is very good for health. It is a fruit that is very good for health.',
    'Beetroot is one of the fruits of God\'s creation. It is a fruit that is very good for health. It is a fruit that is very good for health. It is a fruit that is very good for health. It is a fruit that is very good for health.',
    'Bell Pepper is one of the fruits of God\'s creation. It is a fruit that is very good for health. It is a fruit that is very good for health.',
    'Cabbage is one of the fruits of God\'s creation. It is a fruit that is very good for health. It is a fruit that is very good for health.',
    'Capsicum is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Carrot is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Cauliflower is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Chilli Pepper is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Corn is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Cucumber is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Eggplant is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Garlic is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Ginger is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Grapes is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Jalepeno is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Kiwi is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Lemon is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Lettuce is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Mango is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Onion is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Orange is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Paprika is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Pear is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Peas is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Pineapple is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Pomegranate is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Potato is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Raddish is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Soy Beans is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Spinach is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Sweetcorn is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Sweetpotato is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Tomato is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Turnip is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
    'Watermelon is one of the fruits of God\'s creation. It is a fruit that is very good for health.',
  ];

  final List<FruitDataModel> fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel(
            fruitname: fruitname[index],
            description: description[index],
          ));

  String desc = '';

  @override
  Widget build(BuildContext context) {
    double baseWidth = 411;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    void descc() {
      for (int i = 0; i < fruitdata.length; i++) {
        if (fruitdata[i].fruitname == stage) {
          desc = fruitdata[i].description;
          break;
        }
      }
    }

    descc();
    return Container(
      width: double.infinity,
      child: Container(
        // signupscreen1QUG (1:3333)
        padding: EdgeInsets.fromLTRB(33 * fem, 50 * fem, 34 * fem, 113 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff4f5f9),
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // apple1bx4 (308:2)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 19 * fem),
              width: 283 * fem,
              height: 293 * fem,
              child: Image.asset(
                'assets/fruit_logo/' + stage + '.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // group73uhr (308:3)
              margin:
                  EdgeInsets.fromLTRB(39 * fem, 0 * fem, 38 * fem, 43 * fem),
              child: TextButton(
                onPressed: () async {
                  try {
                    AudioCache cache = AudioCache();
                    await cache.play('audio/' + stage + '.mp3');
                  } catch (e) {
                    print(e);
                  }
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 61 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff5667fd),
                    borderRadius: BorderRadius.circular(12 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(0 * fem, 14 * fem),
                        blurRadius: 16 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Spell',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Exo',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.33 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // group74f4k (2:4807)
              width: double.infinity,
              height: 200 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12 * fem),
              ),
              child: Container(
                // insogk (2:4808)
                padding:
                    EdgeInsets.fromLTRB(8 * fem, 7 * fem, 7 * fem, 1 * fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(12 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x23000000),
                      offset: Offset(0 * fem, 8 * fem),
                      blurRadius: 8.5 * fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group635PN (2:4810)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 8 * fem, 7 * fem),
                      padding: EdgeInsets.fromLTRB(
                          9 * fem, 18 * fem, 9 * fem, 26 * fem),
                      decoration: BoxDecoration(
                        color: Color(0xffdde1ff),
                        borderRadius: BorderRadius.circular(12 * fem),
                      ),
                      child: Center(
                        // clipart8837961D8C (310:13)
                        child: SizedBox(
                          width: 127 * fem,
                          height: 117 * fem,
                          child: Image.asset(
                            'assets/ebook.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // group62wZz (2:4904)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 4 * fem, 0 * fem, 0 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // apple4Pi (2:4916)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 10 * fem),
                            child: Text(
                              stage,
                              style: SafeGoogleFont(
                                'Exo',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.33 * ffem / fem,
                                color: Color(0xff364356),
                              ),
                            ),
                          ),
                          Container(
                            // appleisyWg (2:4906)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 1 * fem),
                            child: Text(
                              stage + ' is',
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.1725 * ffem / fem,
                                color: Color(0xff364356),
                              ),
                            ),
                          ),
                          Container(
                            // appleisoneofthefruitsofgodscre (2:4917)
                            constraints: BoxConstraints(
                              maxWidth: 176 * fem,
                            ),
                            child: Text(
                              desc,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.5362318357 * ffem / fem,
                                color: Color(0xff121212),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
