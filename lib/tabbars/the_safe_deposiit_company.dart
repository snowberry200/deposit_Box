import 'package:deposit_company/layout/presentation/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafeDepositCompany extends StatefulWidget {
  const SafeDepositCompany({super.key});

  @override
  State<SafeDepositCompany> createState() => _SafeDepositCompanyState();
}

class _SafeDepositCompanyState extends State<SafeDepositCompany> {
  late ScrollController scrollcontrollerOne, scrollcontrollerTwo;

  @override
  void initState() {
    scrollcontrollerOne = ScrollController();
    scrollcontrollerTwo = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollcontrollerOne.dispose();
    scrollcontrollerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: SizedBox(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                    primary: true,
                    //controller: scrollcontrollerOne,
                    children: <Widget>[
                      const Text.rich(
                          softWrap: true,
                          TextSpan(
                            text: 'The Safe Deposit Company',
                            style: TextStyle(
                                letterSpacing: 1.2,
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Register()));
                        },
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text.rich(
                            TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                
                                backgroundColor: Colors.transparent,
                                  letterSpacing: 1.2,
                                  fontSize: 15,
                                  //decorationStyle: TextDecorationStyle.wavy,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text.rich(
                        TextSpan(
                          text: 'Safe Deposit Boxes',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 15,
                              //decorationStyle: TextDecorationStyle.wavy,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text.rich(TextSpan(
                          text:
                              'Are Your Vital Personal Documents, Business\nDocuments, and Other Valuables Safe?',
                          style: TextStyle(
                              wordSpacing: 1.2,
                              letterSpacing: 1.2,
                              fontSize: 25,
                              decorationStyle: TextDecorationStyle.dashed,
                              color: Color.fromARGB(255, 40, 84, 162)))),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                          'Whether you are the owner of a business or the head of a household, keeping your vital assets “safe and secure” is essential.  Take a look at our security measures to protect your assets with a safe deposit box.Would they survive a natural disaster like flooding, earthquake or tornado?  Are they protected from fire, \ntheft or sabotage?  If your answer is “no”, The Safe Deposit Company is an excellent choice for secure, \nclimate controlled storage of backups, documents, valuables and other important items.  We offer safe \ndeposit box rentals with access 7 days a week.  Additionally, we have open shelving to keep inventories, \nwine collections, or other large valuables.',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              wordSpacing: 1.2,
                              fontSize: 14,
                              decorationStyle: TextDecorationStyle.dashed,
                              color: Colors.black)),
                      const SizedBox(height: 30),
                      const Text(
                          'Location:  We are conveniently located 1 mile north of Highway 64/40 on Lindbergh & Garibaldi, south of the Chaminade U-turn on the west side. Look for our big blue sign at the corner.\n\nYou may park next to the building, enter our single level facility, and quickly access your safe deposit box, 7 days a week.  If you need a private viewing room while you are here, we have several.',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              wordSpacing: 1.2,
                              fontSize: 14,
                              decorationStyle: TextDecorationStyle.dashed,
                              color: Colors.black)),
                      const SizedBox(height: 30),
                      const Text(
                          'Safe Deposit Box Rentals:  There are 9 locker sizes from which to choose and media storage for electronic records on portable devices.  All safe deposit boxes are within the Vault where the temperature is maintained between 68 and 72 degrees, and humidity between 40% and 50%.  The air is filtered for dust 24 hours a day, 365 days a year. \n\nWe offer convenience, accessibility, and most of all security, so that you may rest assured that your valuables are safe!',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              wordSpacing: 1.2,
                              fontSize: 14,
                              decorationStyle: TextDecorationStyle.dashed,
                              color: Colors.black)),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text.rich(
                        TextSpan(
                          text: 'Contact us for more information.',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              letterSpacing: 1.2,
                              fontSize: 15,
                              //decorationStyle: TextDecorationStyle.wavy,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 40.0, top: 0, bottom: 20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    image: const DecorationImage(
                                      filterQuality: FilterQuality.high,
                                      image: AssetImage(
                                        "image/black.jpeg",
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              const SizedBox(width: 30),
                              const SizedBox()
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
                      const Text('You must be logged in to post a comment.',
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
          const SizedBox(width: 40),
          Expanded(
            flex: 1,
            child: SizedBox(child:
            SingleChildScrollView(
              child: Column(children: const [
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
              )
              ],),
            )),
          ),
         
        ],
      ),
    );
  }
}
