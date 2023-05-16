import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_ppf/l10n/l10n.dart';
import 'package:flutter_ppf/main.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _loadSavedLocale();
  }

  Future<void> _loadSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode') ?? 'en';
    setState(() {
      _locale = Locale(languageCode);
    });
  }

  void _saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', locale.languageCode);
  }

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
    _saveLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyPage4(setLocale: setLocale),
    );
  }
}

class MyPage4 extends StatefulWidget {
  const MyPage4({required this.setLocale, Key? key}) : super(key: key);

  final void Function(Locale locale) setLocale;

  @override
  _MyPage4State createState() => _MyPage4State();
}

const _marianame = 'Maria';
const _josephname = 'Joseph';

class _MyPage4State extends State<MyPage4> {
  String _name = _marianame;

  void _changeName(String name) {
    setState(() {
      _name = name;
    });
    print(Localizations.localeOf(context).toString());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.setting,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                AppLocalizations.of(context)!.languagesetting,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      widget.setLocale(const Locale('id'));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/lang_id.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      widget.setLocale(const Locale('en'));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/lang_uk.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      widget.setLocale(const Locale('ms'));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/lang_ms.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
