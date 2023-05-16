import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FruitPage extends StatefulWidget {
  const FruitPage({Key? key}) : super(key: key);

  @override
  _FruitPageState createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
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
        home: MyFruitPage());
  }
}

class MyFruitPage extends StatefulWidget {
  const MyFruitPage({Key? key}) : super(key: key);

  @override
  _MyFruitPageState createState() => _MyFruitPageState();
}

class _MyFruitPageState extends State<MyFruitPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
