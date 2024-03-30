import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_video_app/helpers/bottom_navigation_bar_widget.dart';
import 'list_tile_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, required this.color, required this.index});
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: color,
        elevation: 4,
        child: Stack(
          children: [
            ListView(
              children: [
                ListTileWidget(title: "Home", navigation: const BottomNavBar(index: 0,), tileColor: index == 0 ? Colors.white.withOpacity(0.4) : null,),
                ListTileWidget(title: "Profile", navigation: const BottomNavBar(index: 1,), tileColor: index == 1 ? Colors.white.withOpacity(0.4) : null,),
                ListTileWidget(title: "Backups", navigation: const BottomNavBar(index: 2,),  tileColor: index == 2 ? Colors.white.withOpacity(0.4) : null,),
                ListTileWidget(title: "Offline", navigation: const BottomNavBar(index: 3), tileColor: index == 3 ? Colors.white.withOpacity(0.4) : null,),
              ],
            ),
            const Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Developed by ",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 2,),
                      ),
                      Text(
                        "Muhammad Rameez",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Roll number ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 2,),
                      ),
                      Text(
                        "0090-BSCS-20",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
