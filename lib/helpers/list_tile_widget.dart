import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.title, required this.navigation, required this.tileColor});
  final String title;
  final Color? tileColor;
  final Widget navigation;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: tileColor,
      title: Text(title, style: const TextStyle(
          fontSize: 18,
          letterSpacing: 2,
          color: Colors.white),),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => navigation));
      },
      trailing: Icon(Icons.chevron_right_outlined,
        color: Colors.white.withOpacity(0.5),),
    );
  }
}
