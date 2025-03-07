import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../presentation/sign_in.dart';

class SafeDepositBoxes extends StatefulWidget {
  const SafeDepositBoxes({super.key});

  @override
  State<SafeDepositBoxes> createState() => _SafeDepositBoxesState();
}

class _SafeDepositBoxesState extends State<SafeDepositBoxes> {
  late ScrollController scorllcontrollerOne, scrollcontrollerTwo;
  @override
  void initState() {
    scorllcontrollerOne = ScrollController();
    scrollcontrollerTwo = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scorllcontrollerOne.dispose();
    scrollcontrollerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 0.0, bottom: 0, left: 20, right: 20),
        child: Stack(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: SizedBox(
                        child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context)
                              .copyWith(scrollbars: false),
                          child: ListView(
                            primary: true,
                            // controller: scorllcontrollerOne,
                            children: [
                              const Text.rich(
                                  softWrap: true,
                                  TextSpan(
                                    text: 'Safe Deposit Boxes',
                                    style: TextStyle(
                                        letterSpacing: 1.2,
                                        fontSize: 35,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Align(
                                alignment: Alignment.topLeft,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AccessScreen()));
                                  },
                                  child: const Text.rich(
                                    TextSpan(
                                      text: 'Home',
                                      style: TextStyle(
                                          letterSpacing: 1.2,
                                          fontSize: 15,
                                          //decorationStyle: TextDecorationStyle.wavy,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text.rich(
                                    TextSpan(
                                      text: 'Safe Deposit Company',
                                      style: TextStyle(
                                          letterSpacing: 1.2,
                                          wordSpacing: 1.3,
                                          fontSize: 15,
                                          //decorationStyle: TextDecorationStyle.wavy,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 40.0, top: 40, bottom: 20),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 350,
                                        decoration: ShapeDecoration(
                                            shape: BeveledRectangleBorder(
                                              side: const BorderSide(
                                                  color: CupertinoColors
                                                      .lightBackgroundGray,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            image: const DecorationImage(
                                              filterQuality: FilterQuality.high,
                                              image: AssetImage(
                                                "image/vaults.jpeg",
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      const SizedBox(width: 30),
                                      const Expanded(
                                        child: SizedBox(
                                          child: Column(
                                            children: [
                                              Text(
                                                  'The Safe Deposit Company has over 1,000 safe deposit boxes of various sizes and a large room for media storage, located inside a secure vault and available to individuals and companies in the St. Louis Missouri area.',
                                                  style: TextStyle(
                                                      letterSpacing: 1.2,
                                                      wordSpacing: 1.2,
                                                      fontSize: 12,
                                                      // fontStyle: FontStyle.italic,
                                                      color: Colors.black)),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                  'The facility has the security of a bank vault with the benefit of seven-days-a-week availability.',
                                                  style: TextStyle(
                                                      letterSpacing: 1.2,
                                                      wordSpacing: 1.2,
                                                      fontSize: 12,
                                                      color: Colors.black)),
                                              SizedBox(height: 30),
                                              Text(
                                                  'Convenient parking and one level building access provide easy entrance.',
                                                  style: TextStyle(
                                                      letterSpacing: 1.2,
                                                      wordSpacing: 1.2,
                                                      fontSize: 12,
                                                      color: Colors.black))
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                child: Text(
                                  'Safe deposit box rentals are available for one month, 3-months, 6-months, or one year. There are nine locker sizes from which to choose.\n\n\nAccessing your box requires identification, a personal key, a guard key, and a sign-in procedure. Carts are provided for moving your personal items to a private coupon room. We respect your privacy when you are here and will assist you only when requested.\n\n\nIf you ever need a record of your visits to the Vault, we have that information available.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Text.rich(TextSpan(
                                  text:
                                      'Come for a tour, meet our staff, and select a box for your needs!',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic))),
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 40.0, top: 0, bottom: 20),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 350,
                                        decoration: ShapeDecoration(
                                            shape: BeveledRectangleBorder(
                                              side: const BorderSide(
                                                  color: CupertinoColors
                                                      .lightBackgroundGray,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            image: const DecorationImage(
                                              filterQuality: FilterQuality.high,
                                              image: AssetImage(
                                                "image/key.jpeg",
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      const SizedBox(width: 30),
                                      const Expanded(
                                        child: SizedBox(),
                                      )
                                    ]),
                              ),
                              const SizedBox(height: 50),
                              const Text('Leave a Reply',
                                  style: TextStyle(
                                      letterSpacing: 1.2,
                                      wordSpacing: 1.2,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black)),
                              const SizedBox(height: 10),
                              const Text(
                                  'You must be logged in to post a comment.',
                                  style: TextStyle(
                                      letterSpacing: 1.2,
                                      wordSpacing: 1.2,
                                      fontSize: 14,
                                      // fontStyle: FontStyle.italic,
                                      color: Colors.black))
                            ],
                          ),
                        ),
                      )),
                  const SizedBox(width: 30),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ListView(
                          controller: scrollcontrollerTwo,
                          children: const [
                            Center(
                                child: Text('THE SAFE DEPOSIT COMPANY',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 13,
                                        letterSpacing: 1.2))),
                            SizedBox(height: 20),
                            Divider(
                              color: Colors.black,
                              thickness: 0.2,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Phone: 314-991-3858",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Hours\n\nMon-Fri: 9 a.m.-5 p.m.\n\nSat & Sun: 10 a.m.-2 p.m.\n\nClosed Most National Holidays\n\n\nBy Appointment Outside of Business Hours",
                              style: TextStyle(
                                  letterSpacing: 1.1,
                                  wordSpacing: 1.1,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 20),
                            Divider(
                              color: Colors.black,
                              thickness: 0.5,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'At Lindbergh & Garabaldi\n\n515 S Lindbergh Blvd\n\nSt Louis MO 63131\n\n\nboxes@thesafedepositcompany.com',
                              style: TextStyle(
                                  letterSpacing: 1.1,
                                  wordSpacing: 1.1,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                            Divider(
                              color: Colors.black,
                              thickness: 0.2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
