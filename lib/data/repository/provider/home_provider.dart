import 'dart:async';

import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{
  late Timer timer;

  void timmer(BuildContext context){
    timer = Timer(const Duration(seconds: 5),
            () =>
            Navigator.pushNamed(context, "/onboard"));
  }
}