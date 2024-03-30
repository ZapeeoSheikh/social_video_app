import 'package:flutter/material.dart';
import 'package:social_video_app/helpers/bottom_navigation_bar_widget.dart';
import 'package:social_video_app/view/backup/backup_screen.dart';
import 'package:social_video_app/view/dashboard/dashboard_screen.dart';
import 'package:social_video_app/view/offline/offline_screen.dart';
import 'package:social_video_app/view/profile/profile_screen.dart';
import 'package:social_video_app/view/splash/splash_screen.dart';
import '../../view/splash/on_boarding_screen.dart';

Map<String, WidgetBuilder> routes = {
  "/": (context) => const SplashScreen(),
  "/dashboard": (context) => const DashboardPage(),
  "/profile": (context) => const ProfilePage(),
  "/backup": (context) => const BackupPage(),
  "/offline": (context) => const OfflinePage(),
  "/bottomNav": (context) => const BottomNavBar(index: 0),
  "/onboard": (context) => const OnBoardingScreen(),
};
