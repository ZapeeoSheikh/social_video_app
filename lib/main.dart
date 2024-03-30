import 'package:flutter/material.dart';
import 'package:social_video_app/data/repository/provider/home_provider.dart';
import 'package:social_video_app/utils/routes/route_paths.dart';
import 'package:provider/provider.dart';
import 'data/repository/provider/http_helper.dart';

void main() {
  runApp(const StartupApp());
}

class StartupApp extends StatelessWidget {
  const StartupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HttpHelper()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        title: 'Social Video App',
        debugShowCheckedModeBanner: false,
        routes: routes,
        initialRoute: "/",
      ),
    );
  }
}

