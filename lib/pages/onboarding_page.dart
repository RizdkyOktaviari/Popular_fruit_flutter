import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_ppf/pages/home_page.dart';
import 'package:flutter_ppf/widgets/button_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "",
            body: "",
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "",
            body: "",
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "",
            body: "",
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "",
            body: '',
            footer: Center(
              child: ButtonWidget(
                text: 'Start Learning',
                onClicked: () {
                  setOnboardingComplete();
                  goToHome(context);
                },
              ),
            ),
            decoration: getPageDecoration(),
          ),
        ],
        onDone: () {
          setOnboardingComplete();
          goToHome(context);
        },
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          color: Color.fromARGB(255, 151, 209, 50),
        ),
        showBackButton: true,
        back: const Icon(
          Icons.arrow_back,
          color: Color.fromARGB(255, 151, 209, 50),
        ),
        dotsDecorator: getDotDecoration(),
        showDoneButton: false,
        globalBackgroundColor: Color.fromARGB(255, 245, 240, 116),
      ),
    );
  }

  void goToHome(BuildContext context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  void setOnboardingComplete() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCompletedOnboarding', true);
  }

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        size: Size(10, 10),
        activeColor: Color.fromARGB(255, 151, 209, 50),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        bodyPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        boxDecoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/cover.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      );
}
