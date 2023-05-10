import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_ppf/pages/home_page.dart';
import 'package:flutter_ppf/widgets/button_widgets.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Fractional shares",
              body:
                  "Instead of having to buy an entire share, invest any amount you want.",
              image: buildImage('assets/ebook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Learn as you go",
              body:
                  "Download the Stockpile app and master the market with our mini-lesson.",
              image: buildImage('assets/learn.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Start investing",
              body:
                  "Once you've learned the basics, you can start investing in companies you love.",
              image: buildImage('assets/manthumbs.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Get started",
              body: 'Start your journey',
              footer: Center(
                child: ButtonWidget(
                  text: 'Start Reading',
                  onClicked: () => goToHome(context),
                ),
              ),
              image: buildImage('assets/readingbook.png'),
              decoration: getPageDecoration(),
            ),
          ],
          onDone: () {
            goToHome(context);
          },
          showNextButton: true,
          next: const Icon(Icons.arrow_forward),
          showBackButton: true,
          back: const Icon(Icons.arrow_back),
          done: const Icon(Icons.done),
          dotsDecorator: getDotDecoration(),
          showDoneButton: false,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
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
        pageColor: Colors.white,
      );
}
