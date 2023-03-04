import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FandQ extends StatefulWidget {
  const FandQ({super.key});

  @override
  State<FandQ> createState() => _FandQState();
}

class _FandQState extends State<FandQ> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 0.0, bottom: 20, left: 20, right: 20),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: Stack(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          child: FandqListview(),
                        )),
                    SizedBox(width: 30),
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class FandqListview extends StatelessWidget {
  const FandqListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text.rich(
            softWrap: true,
            TextSpan(
              text: 'FAQ',
              style: TextStyle(
                  letterSpacing: 1.2,
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
            const Divider(color: CupertinoColors.lightBackgroundGray,thickness: 1,indent: 2,
            height: 0,),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {},
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
        const SizedBox(height: 30),
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {},
            child: const Text.rich(
              TextSpan(
                text: 'Frequently Asked Questions',
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
        const SizedBox(height: 30),
        const Text('. What size boxes do you have?',
            style: TextStyle(
                letterSpacing: 1.2,
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 30),
        const SizedBox(
          child: Text(
            'There are nine locker sizes and large room storage available.\n\n\nLocker sizes:\n\n\n3 x 5 x 22\n\n\n5 x 10 x 22\n\n\n10 x 10 x 22\n\n\n10 x 15 x 22\n\n\n15 x 15 x 22\n\n\n15 x 30 x 22\n\n\n30 x 30 x 22\n\n\n42 x 27 x 22\n\n\n42 x 33 x 22.',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Text.rich(TextSpan(
            text: '. Do you insure the box contents?',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
        const SizedBox(height: 30),
        const Text(
            'Only you know the contents of your safe deposit box. We recommend that you acquire insurance protection through your homeowners or renters insurance. We are happy to recommend insurance providers if needed. You will receive a discount on your insurance when you store your valuables with us.'),
        const SizedBox(height: 20),
        const Text('Are you open in the evenings and on the weekends?',
            style: TextStyle(
                letterSpacing: 1.2,
                wordSpacing: 1.2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        const SizedBox(height: 10),
        const Text(
            'Mon – Fri: 9 a.m. – 5 p.m.\n\n\nSat & Sun: 10 a.m. – 2 p.m.\n\n\nBy appointment outside of business hours.\n\n\nClosed for major national holidays.',
            style: TextStyle(
                letterSpacing: 1.2,
                wordSpacing: 1.2,
                fontSize: 14,
                // fontStyle: FontStyle.italic,
                color: Colors.black)),
        const SizedBox(height: 20),
        const Text(
            '. What are the security measures at the facility? Is it in a vault?',
            style: TextStyle(
                letterSpacing: 1.2,
                wordSpacing: 1.2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        const SizedBox(height: 30),
        const Text(
            'All media is stored in an 18-inch steel reinforced concrete vault with one entrance in and out. The vault is rated 9R for strength and is in full compliance with the Bank Protection Act.  We maintain specified temperature and humidity in our vault at all times.  These measurements are monitored daily.\n\n\nOur fire protection system is a combination of Ansul Halon and FM-200 suppression systems, which are serviced and maintained year round by a local fire safety company.\n\n\nOur alarm system is set at closing time each evening and remains armed through the night.  During the day, there are several panic sensors placed throughout the building in case security is breached.  Security cameras are focused on all areas of the vault and  automatically record all activities being conducted.\n\n\nA security link to the local police and fire personnel is maintained via a central station security monitoring service, whose processes and procedures are reviewed quarterly.\n\n\nEach customer is issued a custom ID on his or her first visit to our vault.  Customer entry into the vault is also monitored through the use of a time card system so that we may track customer entry, if necessary.'),
        const SizedBox(height: 30),
        const Text('. What is the cost of the box rentals?',
            style: TextStyle(
                letterSpacing: 1.2,
                wordSpacing: 1.2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        const SizedBox(height: 30),
        const Text(
            'Safe deposit box rental prices vary by size and contract duration.  Boxes may be rented for 1 month, \n\n\n3 months, 6 months, or 1 year, as specified by the customer.  A key-deposit is required.'),
        const SizedBox(height: 30),
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {},
            child: const Text.rich(
              TextSpan(
                text: 'Contact us to determine what you need:',
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
        const SizedBox(height: 30),
        const Text(
          "Phone: 314-991-3858",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 30),
        const Text(
          'Email: boxes@thesafedepositcompany.com',
          style: TextStyle(
              letterSpacing: 1.1,
              wordSpacing: 1.1,
              fontSize: 10,
              fontWeight: FontWeight.w600),
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
    );
  }
}
