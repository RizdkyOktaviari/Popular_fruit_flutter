import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
import 'Fruit_detail.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
    if (_image == null) return;

    final uri = Uri.parse(
        'http://ec2-108-136-59-232.ap-southeast-3.compute.amazonaws.com/upload');
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FruitDetail(stage: stage)),
        );
      } else {
        print('Error uploading image.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Fruits',
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
              ? Image.file(_image!, width: 250, height: 250, fit: BoxFit.cover)
              : buildImage('assets/ebook.png'),
          SizedBox(
            height: 40,
          ),
          CustomButton(
              title: 'Pick from gallery',
              icon: Icons.image_outlined,
              onClick: () => getImage(ImageSource.gallery)),
          SizedBox(
            height: 10,
          ),
          CustomButton(
              title: 'Take a photo',
              icon: Icons.camera_outlined,
              onClick: () => getImage(ImageSource.camera)),
          CustomButton(
              title: 'Scan',
              icon: Icons.scanner_outlined,
              onClick: () => _uploadImage(context))
        ],
      )),
    );
  }

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
}
