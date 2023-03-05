import 'package:deposit_company/presentation/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../layout/layout.dart';
import 'register.dart';
import '../tabbars/contact.dart';
import '../tabbars/fandq.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropDownvalue = ('B');
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        appBar: Layout.isMobile(context)
            ? AppBar(
                backgroundColor: const Color.fromARGB(255, 19, 42, 82),
                leading: PopupMenuButton(
                    shape: const BeveledRectangleBorder(
                        side: BorderSide(
                            color: CupertinoColors.systemBlue,
                            width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    position: PopupMenuPosition.under,
                    icon: const Icon(Icons.menu),
                    elevation: 10,
                    itemBuilder: (context) => [
                          PopupMenuItem<dynamic>(
                            mouseCursor: MouseCursor.defer,
                            value: 0,
                            child: Center(
                                child: TextButton(
                                    child: const Text(
                                      'Sign in',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 4, 55, 97),
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AccessScreen()));
                                    })),
                          ),
                          PopupMenuItem<dynamic>(
                            mouseCursor: MouseCursor.defer,
                            value: 1,
                            child: Center(
                                child: TextButton(
                                    child: const Text(
                                      'Register',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 4, 55, 97),
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return const Scaffold(
                                            backgroundColor: CupertinoColors
                                                .extraLightBackgroundGray,
                                            body: Register());
                                      }));
                                    })),
                          ),
                          PopupMenuItem<dynamic>(
                            mouseCursor: MouseCursor.defer,
                            value: 2,
                            child: Center(
                                child: TextButton(
                                    child: const Text(
                                      'Contact',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 4, 55, 97),
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return const Scaffold(
                                            backgroundColor: CupertinoColors
                                                .extraLightBackgroundGray,
                                            body: Contact());
                                      }));
                                    })),
                          ),
                          PopupMenuItem<dynamic>(
                            value: 3,
                            child: Center(
                                child: TextButton(
                              onPressed: () => Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Scaffold(
                                    backgroundColor: CupertinoColors
                                        .extraLightBackgroundGray,
                                    body: Container(
                                        color: Colors.white,
                                        child: const FandQ()));
                              })),
                              child: const Text(
                                'f&q',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 4, 55, 97),
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                          ),
                        ]))
            : AppBar(
                toolbarHeight: 0,
                elevation: 0,
                backgroundColor: CupertinoColors.white,
              ),
        body: const Layout());
  }
}
