import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_video_app/data/repository/provider/home_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    // TODO: implement initState
    super.initState();
    homeProvider.timmer(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.gif"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}





