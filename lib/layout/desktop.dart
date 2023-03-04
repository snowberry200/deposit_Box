// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../nested.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen>
    with TickerProviderStateMixin {
  late TabController tabBarController;
  @override
  void initState() {
    super.initState();

    tabBarController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: NestedWidget(tabBarController: tabBarController),
    );
  }
}
