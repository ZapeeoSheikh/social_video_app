import 'package:flutter/material.dart';

class ContainerFullScreenWidget extends StatelessWidget {
  const ContainerFullScreenWidget({Key? key, required this.title, required this.colors}) : super(key: key);
  final String title;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10)),
        child: Text(
          "This is a $title Screen",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ));
  }
}
