import 'package:flutter/material.dart';

class SubmitPayment extends StatefulWidget {
  const SubmitPayment({super.key});

  @override
  State<SubmitPayment> createState() => _SubmitPaymentState();
}

class _SubmitPaymentState extends State<SubmitPayment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, bottom: 0, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: SizedBox(
                child: ListView(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text.rich(
                        softWrap: true,
                        TextSpan(
                          text: 'Submit Payment',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text.rich(
                      TextSpan(
                        text: 'Please click to submit your payments.',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 15,
                            //decorationStyle: TextDecorationStyle.wavy,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 248, 238, 142),
                                    width: 2),
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                shadowColor: Colors.black,
                              ),
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Submit Payment'),
                              )),
                        ),
                        const SizedBox(),
                      ],
                    ),
                    const SizedBox(height: 80),
                    const Text('Leave a Reply',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            wordSpacing: 1.2,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    const SizedBox(height: 10),
                    const Text('You must be logged in to post a comment.',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            wordSpacing: 1.2,
                            fontSize: 14,
                            // fontStyle: FontStyle.italic,
                            color: Colors.black))
                  ],
                ),
              )),
          const SizedBox(width: 40),
          const Expanded(
              flex: 1,
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
              ))
        ],
      ),
    );
  }
}
