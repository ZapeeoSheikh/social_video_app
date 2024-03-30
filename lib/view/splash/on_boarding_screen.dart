import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/color.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override

  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Explore',
      onFinish: () {
        Navigator.pushNamed(context, "/bottomNav");
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: MyColor.teal,
      ),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: MyColor.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        '',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: MyColor.white,
      totalPage: 3,
      headerBackgroundColor: MyColor.darkBackground,
      pageBackgroundColor: MyColor.darkBackground,
      background: [
        Image.asset(
          'assets/images/onboard1.png',
          height: 400,
        ),
        Image.asset(
          'assets/images/onboard2.png',
          height: 400,
        ),
        Image.asset(
          'assets/images/onboard3.png',
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Container(
                color: MyColor.darkBackgroundBottom,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      'Discover Great Deals',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Have something to sell? Just snap, upload, and price your items. We've made the process simple and quick. Get your items in front of buyers in no time!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Container(
                color: MyColor.darkBackgroundBottom,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      'Effortless Selling',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Have something to sell? Just snap, upload, and price your items. We've made the process simple and quick. Get your items in front of buyers in no time!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Container(
                color: MyColor.darkBackgroundBottom,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      'Promote Your Business',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Our platform is a powerful tool for businesses as well! Advertise your products or services to a large and engaged audience",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
