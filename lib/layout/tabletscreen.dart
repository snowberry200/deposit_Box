// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../presentation/nested.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen>
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
      child: Center(child: NestedWidget(tabBarController: tabBarController)),
    );
  }
}
