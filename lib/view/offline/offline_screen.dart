import 'package:flutter/material.dart';

import '../../helpers/appbar_widget.dart';
import '../../helpers/container_full_screen_widget.dart';
import '../../helpers/drawer_widget.dart';
import '../../utils/colors/color.dart';

class OfflinePage extends StatelessWidget {
  const OfflinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: "Offline", colors: MyColor.pink),
      drawer: DrawerWidget(color: MyColor.pink, index: 3,),
      body: ContainerFullScreenWidget(title: "Offline", colors: MyColor.pink),
    );
  }
}
