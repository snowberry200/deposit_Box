import 'package:deposit_company/tabbars/contact.dart';
import 'package:deposit_company/tabbars/fandq.dart';
import 'package:deposit_company/tabbars/submit_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../tabbars/safe_deposit_boxes.dart';
import '../tabbars/the_safe_deposiit_company.dart';
import '../layout/layout.dart';

class NestedWidget extends StatefulWidget {
  const NestedWidget({
    Key? key,
    required this.tabBarController,
  }) : super(key: key);

  final TabController tabBarController;

  @override
  State<NestedWidget> createState() => _NestedWidgetState();
}

class _NestedWidgetState extends State<NestedWidget>
    with TickerProviderStateMixin {
  late TabController tabBarController;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    tabBarController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _animationController.dispose();
    tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: CupertinoColors.systemRed,
            collapsedHeight: 300,
            expandedHeight: 300,
            toolbarHeight: 300,
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "THE SAFE DEPOSIT COMPANY",
                  style: Layout.isTablet(context)
                      ? const TextStyle(
                          fontSize: 20,
                          letterSpacing: 1.2,
                          wordSpacing: 1.2,
                          color: Color.fromARGB(255, 206, 203, 203),
                          fontWeight: FontWeight.bold)
                      : const TextStyle(
                          fontSize: 30,
                          letterSpacing: 1.3,
                          wordSpacing: 1.3,
                          color: Color.fromARGB(255, 206, 203, 203),
                          fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(' "EXCELLENCE IN PROTECTION AND SERVICE"',
                    style: Layout.isTablet(context)
                        ? const TextStyle(
                            fontSize: 14, color: CupertinoColors.white)
                        : const TextStyle(
                            fontSize: 16, color: CupertinoColors.white))
              ],
            ),
            flexibleSpace: Container(
              decoration: const ShapeDecoration(
                  color: CupertinoColors.white,
                  shape: BeveledRectangleBorder(
                      side: BorderSide(
                          color: CupertinoColors.lightBackgroundGray, width: 3),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                  image: DecorationImage(
                    filterQuality: FilterQuality.high,
                    image: AssetImage(
                      "image/yelloGold.jpeg",
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            pinned: false,
            floating: false,
            forceElevated: innerBoxIsScrolled,
          ),
        ];
      },
      body: Container(
        decoration: const ShapeDecoration(
          color: CupertinoColors.extraLightBackgroundGray,
          shape: BeveledRectangleBorder(
              side: BorderSide(
                  color: CupertinoColors.darkBackgroundGray, width: 3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
        ),
        //height: double.infinity,
        child: DefaultTabController(
            initialIndex: 0,
            length: 5, // length of tabs
            child: Column(children: [
              Container(
                decoration: const ShapeDecoration(
                  color: Color.fromARGB(255, 8, 35, 57),
                  shape: BeveledRectangleBorder(
                      side: BorderSide(
                          color: CupertinoColors.darkBackgroundGray, width: 0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      )),
                ),
                height: 18,
                child: SizedBox(
                  child: TabBar(
                    controller: widget.tabBarController,
                    physics: const NeverScrollableScrollPhysics(),
                    labelColor: CupertinoColors.black,
                    labelStyle: Layout.isTablet(context)
                        ? const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.white)
                        : const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.white),
                    padding: const EdgeInsets.only(left: 0, top: 0, right: 0),
                    isScrollable: false,
                    indicator: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0)),
                      color: Color.fromARGB(255, 250, 230, 170),
                    ),
                    unselectedLabelColor: CupertinoColors.white,
                    tabs: const [
                      Tab(
                        text: 'THE SAFE DEPOSIT COMPANY',
                      ),
                      Tab(text: 'SAFE DEPOSIT BOXES'),
                      Tab(text: 'FAQ'),
                      Tab(text: 'SUBMIT PAYMENT'),
                      Tab(text: 'CONTACT'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SizedBox(
                      child: TabBarView(
                          controller: widget.tabBarController,
                          dragStartBehavior: DragStartBehavior.down,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const <Widget>[
                        SafeDepositCompany(),
                        SafeDepositBoxes(),
                        FandQ(),
                        SubmitPayment(),
                        Contact()
                      ])),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ])),
      ),
    );
  }
}
