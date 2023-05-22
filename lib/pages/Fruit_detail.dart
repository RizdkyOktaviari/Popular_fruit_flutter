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
import 'home_page.dart';

class FruitDetail extends StatefulWidget {
  final String stage;
  const FruitDetail({Key? key, required this.stage}) : super(key: key);

  @override
  _FruitDetailState createState() => _FruitDetailState();
}

class _FruitDetailState extends State<FruitDetail> {
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

  void navigateBack() {
    // Perform navigation logic here
    Navigator.pop(context);
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
      theme: ThemeData(
        primarySwatch: _createMaterialColor(background_color),
      ),
      locale: _locale,
      home: MyFruitDetail(stage: widget.stage, navigateBack: navigateBack),
    );
  }
}

class MyFruitDetail extends StatefulWidget {
  const MyFruitDetail(
      {Key? key, required this.navigateBack, required this.stage})
      : super(key: key);
  final String stage;
  final VoidCallback navigateBack;

  @override
  _MyFruitDetailState createState() => _MyFruitDetailState(stage);
}

class _MyFruitDetailState extends State<MyFruitDetail> {
  final String stage;

  _MyFruitDetailState(this.stage);

  static List<String> fruitname = [
    'apple',
    'banana',
    'beetroot',
    'bellpepper',
    'cabbage',
    'capsicum',
    'carrot',
    'cauliflower',
    'chillipepper',
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
    'soybeans',
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
  static List<String> translatedname = [
    "Apel",
    "Pisang",
    "Bit",
    "Paprika",
    "Kubis",
    "Capsicum",
    "Wortel",
    "Kol",
    "Cabe",
    "Jagung",
    "Mentimun",
    "Terong",
    "Bawang Putih",
    "Jahe",
    "Anggur",
    "Cabe Jalepeno",
    "Kiwi",
    "Jeruk Lemon",
    "Selada",
    "Mangga",
    "Bawang Merah",
    "Jeruk",
    "Paprika",
    "Pir",
    "Kacang Polong",
    "Nanas",
    "Delima",
    "Kentang",
    "Lobak",
    "Kacang Kedelai",
    "Bayam",
    "Jagung Manis",
    "Ubi Jalar",
    "Tomat",
    "Lobak",
    "Semangka"
  ];
  static List<String> translatednamemelayu = [
    "Epal",
    "Pisang",
    "Bit",
    "Lada Benggala",
    "Kubis",
    "Kapsikum",
    "Lobak",
    "Kembang Kobis",
    "Cili",
    "Jagung",
    "Timun",
    "Terung",
    "Bawang Putih",
    "Halia",
    "Anggur",
    "Jalepeno",
    "Kiwai",
    "Lemon",
    "Selada",
    "Mangga",
    "Bawang Besar",
    "Oren",
    "Paprika",
    "Pir",
    "Kacang Peas",
    "Nanas",
    "Delima",
    "Kentang",
    "Lobak Merah",
    "Kacang Soya",
    "Bayam",
    "Jagung Manis",
    "Ubi",
    "Tomato",
    "Lobak Putih",
    "Tembikai"
  ];
  static List<String> englishname = [
    "Apple",
    "Banana",
    "Beetroot",
    "Bell Pepper",
    "Cabbage",
    "Capsicum",
    "Carrot",
    "Cauliflower",
    "Chilli Pepper",
    "Corn",
    "Cucumber",
    "Eggplant",
    "Garlic",
    "Ginger",
    "Grapes",
    "Jalepeno",
    "Kiwi",
    "Lemon",
    "Lettuce",
    "Mango",
    "Onion",
    "Orange",
    "Paprika",
    "Pear",
    "Peas",
    "Pineapple",
    "Pomegranate",
    "Potato",
    "Raddish",
    "Soy Beans",
    "Spinach",
    "Sweetcorn",
    "Sweetpotato",
    "Tomato",
    "Turnip",
    "Watermelon"
  ];
  static List<String> descriptionid = [
    "Apple adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Pisang adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Bit adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Bell Pepper adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Kubis adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Capsicum adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Wortel adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Kol adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Cabe adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Jagung adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Mentimun adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Terong adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Bawang Putih adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Jahe adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Anggur adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Cabe Jalepeno adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Kiwi adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Jeruk Lemon adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Selada adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Mangga adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Bawang Merah adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Jeruk adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Paprika adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Pir adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Kacang Polong adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Nanas adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Delima adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Kentang adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Lobak adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Kacang Soya adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Bayam adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Jagung Manis adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Ubi Jalar adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Tomat adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Lobak adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
    "Semangka adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesehatan.",
  ];
  static List<String> descriptionms = [
    "Apple adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Pisang adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Bit adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Lada Benggala adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Kubis adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Kapsikum adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Lobak adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Kembang Kobis adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Cili adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Jagung adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Timun adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Terung adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Bawang Putih adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Halia adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Anggur adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Jalepeno adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Kiwai adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Jeruk Lemon adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Selada adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Mangga adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Bawang Besar adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Oren adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Paprika adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Pir adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Kacang Peas adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Nanas adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Delima adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Kentang adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Lobak Merah adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Kacang Soya adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Bayam adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Jagung Manis adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Ubi adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Tomato adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Lobak Putih adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
    "Tembikai adalah salah satu buah ciptaan Tuhan. Ini adalah buah yang sangat baik untuk kesihatan.",
  ];
  static List<String> imgsname = [
    "Apple.png",
    "Banana.png",
    "Beetroot.png",
    "Bell Pepper.png",
    "Cabbage.png",
    "Capsicum.png",
    "Carrot.png",
    "Cauliflower.png",
    "ChilliPepper.png",
    "Corn.png",
    "Cucumber.png",
    "Eggplant.png",
    "Garlic.png",
    "Ginger.png",
    "Grape.png",
    "Jalepeno.png",
    "Kiwi.png",
    "Lemon.png",
    "Lettuce.png",
    "Mango.png",
    "Onion.png",
    "Orange.png",
    "Paprika.png",
    "Pear.png",
    "Peas.png",
    "Pineapple.png",
    "Pomegranate.png",
    "Potato.png",
    "Raddish.png",
    "SoyBeans.png",
    "Spinach.png",
    "Sweetcorn.png",
    "Sweetpotato.png",
    "Tomato.png",
    "Turnip.png",
    "Watermelon.png"
  ];
  final List<FruitDataModel> fruitdata = List.generate(
    fruitname.length,
    (index) => FruitDataModel(
      fruitname: fruitname[index],
      translatedname: translatedname[index],
      translatednamemelayu: translatednamemelayu[index],
      englishname: englishname[index],
      description: description[index],
      descriptionid: descriptionid[index],
      descriptionms: descriptionms[index],
      imgsname: imgsname[index],
    ),
  );

  String desc = '';
  String trn = '';
  String aud_en = '';
  String imgname = '';

  @override
  Widget build(BuildContext context) {
    double baseWidth = 411;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    void descc() {
      for (int i = 0; i < fruitdata.length; i++) {
        if (fruitdata[i].fruitname == stage) {
          if (AppLocalizations.of(context)!.language == 'English') {
            trn = fruitdata[i].englishname;
            desc = fruitdata[i].description;
            aud_en = fruitdata[i].fruitname;
          } else if (AppLocalizations.of(context)!.language == 'Malay') {
            trn = fruitdata[i].translatednamemelayu;
            desc = fruitdata[i].descriptionms;
            aud_en = fruitdata[i].translatednamemelayu + '_lang_ms';
          } else {
            trn = fruitdata[i].translatedname;
            desc = fruitdata[i].descriptionid;
            aud_en = fruitdata[i].translatedname + '_lang_id';
          }
          imgname = fruitdata[i].imgsname;

          break;
        }
      }
    }

    descc();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RESULT',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Chewy',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            wordSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            widget.navigateBack();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // signupscreen1QUG (1:3333)
            padding:
                EdgeInsets.fromLTRB(33 * fem, 50 * fem, 34 * fem, 113 * fem),
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
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 19 * fem),
                  width: 283 * fem,
                  height: 293 * fem,
                  child: Image.asset(
                    'assets/fruit_logo/' + imgname,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  // group73uhr (308:3)
                  margin: EdgeInsets.fromLTRB(
                      39 * fem, 0 * fem, 38 * fem, 43 * fem),
                  child: TextButton(
                    onPressed: () async {
                      try {
                        AudioCache cache = AudioCache();
                        await cache.play('audio/' + aud_en + '.mp3');
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
                  height: 250 * fem,
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
                                'assets/fruit_logo/' + imgname,
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
                                  trn,
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
                                  trn,
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
        ),
      ),
    );
  }
}
