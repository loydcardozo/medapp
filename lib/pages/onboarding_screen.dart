import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:medapp/pages/homepage.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "ERASER",
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/images/clipboard.png",
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "PENCIL",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/images/sick.png",
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "RULER",
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/telemedicine.png",
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      listContentConfig: listContentConfig,
      onDonePress:(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  }
}