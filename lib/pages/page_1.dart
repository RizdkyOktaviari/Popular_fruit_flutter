import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'Fruit_detail.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
        home: MyPage1());
  }
}

class MyPage1 extends StatefulWidget {
  @override
  _MyPage1State createState() => _MyPage1State();
}

class _MyPage1State extends State<MyPage1> {
  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 300));

  Widget CustomButton({
    required String title,
    required IconData icon,
    required VoidCallback onClick,
  }) =>
      Container(
        width: 280,
        child: ElevatedButton(
          onPressed: onClick,
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 20),
              Text(title),
            ],
          ),
        ),
      );
  File? _image;

  Future getImage(ImageSource source) async {
    // ignore: deprecated_member_use
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image != null) {
        final File imageFile = File(image.path);
        final int imageSize = imageFile.lengthSync();
        final outputFilePath = '${imageFile.path.substring(0)}_compressed.jpg';

        if (imageSize > 5 * 1024 * 1024) {
          final compressedImage = await FlutterImageCompress.compressAndGetFile(
            imageFile.path,
            outputFilePath,
            quality: 50,
          );
          if (compressedImage != null) {
            setState(() {
              _image = compressedImage;
            });
          }
          print("Compressed:" + imageSize.toString());
          // Use the compressed image file
        } else {
          setState(() {
            _image = imageFile;
          });
          print("Not Compressed" +
              imageSize.toString() +
              "Path: " +
              imageFile.path);
        }
      }
      // final imageTemporary = File(image.path);
    } on PlatformException catch (e) {
      Fluttertoast.showToast(msg: e.message.toString());
      print("Failed to pick image: $e");
    }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  Future<void> _uploadImage(BuildContext context) async {
    if (_image == null) {
      Fluttertoast.showToast(msg: "Please select an image.");
      return;
    }
    Fluttertoast.showToast(msg: "Please wait while we are processing");

    final uri = Uri.parse(
        'http://ec2-43-218-89-240.ap-southeast-3.compute.amazonaws.com/upload');
    final request = http.MultipartRequest('POST', uri);
    request.files.add(
      await http.MultipartFile.fromPath(
        'file',
        _image!.path,
      ),
    );
    try {
      final response = await request.send();
      if (response.statusCode == 201) {
        final jsonResponse = jsonDecode(await response.stream.bytesToString());
        final stage = jsonResponse['stage'];
        print('Image uploaded successfully! And its:' + stage);
        Fluttertoast.showToast(msg: "Image scanned successfully!");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FruitDetail(stage: stage)),
        );
      } else {
        Fluttertoast.showToast(msg: "Error uploading image.");
        print('Error uploading image.');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.scanfruit,
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
          children: [
            SizedBox(
              height: 40,
            ),
            _image != null
                ? Image.file(_image!,
                    width: 250, height: 250, fit: BoxFit.cover)
                : buildImage('assets/ebook.png'),
            SizedBox(
              height: 40,
            ),
            CustomButton(
                title: AppLocalizations.of(context)!.uploadimage,
                icon: Icons.image_outlined,
                onClick: () => getImage(ImageSource.gallery)),
            SizedBox(
              height: 10,
            ),
            CustomButton(
                title: AppLocalizations.of(context)!.takephoto,
                icon: Icons.camera_outlined,
                onClick: () => getImage(ImageSource.camera)),
            SizedBox(
              height: 10,
            ),
            CustomButton(
                title: AppLocalizations.of(context)!.scanfruit,
                icon: Icons.scanner_outlined,
                onClick: () => _uploadImage(context)),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
