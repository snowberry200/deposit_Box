import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  late ScrollController scrollControllerOne, scrollControllerTwo;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  final TextEditingController _email = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    scrollControllerOne = ScrollController();
    scrollControllerTwo = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    commentController.dispose();
    _email.dispose();
    scrollControllerOne.dispose();
    scrollControllerTwo.dispose();
    super.dispose();
  }

  RegExp firstName = RegExp(r'([A-Z]{1}[a-z]{2,}?)');
  bool firstNameValid(String first) {
    //String firstname = first.trim();
    if (firstName.hasMatch(first)) {
      return true;
    } else {
      return false;
    }
  }

  RegExp lastName = RegExp(r'([A-Z]{1}[a-z]{2,}?)');
  bool lastNameValid(String last) {
    String lastname = last.trim();
    if (lastName.hasMatch(lastname)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 10.0, bottom: 20, left: 20, right: 20),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                    primary: true,
                    //controller :scrollControllerOne,
                    children: [
                      const Text('CONTACT',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      const Text.rich(
                          softWrap: true,
                          TextSpan(
                            text: 'The Safe Deposit Company',
                            style: TextStyle(
                                letterSpacing: 1.2,
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('515 S Lindbergh Blvd St Louis MO 63131',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              wordSpacing: 1.2,
                              fontSize: 12,
                              color: Colors.black)),
                      const SizedBox(height: 20),
                      const Text('Call: 314-991-3858',
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Text('Email:',
                              style: TextStyle(
                                  letterSpacing: 1.1,
                                  wordSpacing: 1.1,
                                  fontSize: 13)),
                          Text.rich(
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
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                cursorErrorColor: Colors.lightGreenAccent,
                                //forceErrorText: 'Please enter correct info',
                                cursorColor: Colors.blue,
                                enableIMEPersonalizedLearning: true,
                                selectionControls:
                                    CupertinoTextSelectionControls(),
                                textCapitalization: TextCapitalization.none,
                                enableInteractiveSelection: true,
                                autofillHints: const [AutofillHints.name],
                                autovalidateMode: AutovalidateMode.disabled,
                                keyboardType: TextInputType.name,
                                onSaved: (value) =>
                                    firstNameController.text = value!,
                                controller: firstNameController,
                                decoration: InputDecoration(
                                  label: const Text('First Name'),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0),
                                    borderSide: const BorderSide(),
                                  ),
                                  contentPadding: const EdgeInsets.only(
                                      top: 0, bottom: 0, left: 10, right: 10),
                                ),
                                validator: (ifFirstName) {
                                  if (ifFirstName!.isEmpty) {
                                    return 'Can\'t be empty';
                                  }
                                  if (ifFirstName.length <= 3) {
                                    return 'Too short';
                                  }
                                  bool result = firstNameValid(ifFirstName);
                                  if (result) {
                                    return null;
                                  } else {
                                    return 'first alphabet must be UPPERCASE';
                                  }
                                },
                              ),
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                  cursorColor: Colors.blue,
                                  enableIMEPersonalizedLearning: true,
                                  selectionControls:
                                      CupertinoTextSelectionControls(),
                                  textCapitalization: TextCapitalization.none,
                                  enableInteractiveSelection: true,
                                  autofillHints: const [
                                    AutofillHints.familyName
                                  ],
                                  autovalidateMode: AutovalidateMode.disabled,
                                  keyboardType: TextInputType.name,
                                  onSaved: (value) =>
                                      lastNameController.text = value!,
                                  controller: lastNameController,
                                  decoration: InputDecoration(
                                    // errorText: "enter a correct Last name ",
                                    label: const Text('Last Name'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      borderSide: const BorderSide(),
                                    ),
                                    contentPadding: const EdgeInsets.only(
                                        top: 0, bottom: 0, left: 10, right: 10),
                                  ),
                                  validator: (iflastname) {
                                    if (iflastname != null &&
                                        iflastname.length <= 3) {
                                      return 'Please enter correct name';
                                    }
                                    bool result = lastNameValid(iflastname!);
                                    {
                                      if (result) {
                                        return null;
                                      } else {
                                        return 'first alphabet must be UPPERCASE';
                                      }
                                    }
                                  }),
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                  cursorColor: Colors.blue,
                                  enableIMEPersonalizedLearning: true,
                                  selectionControls:
                                      CupertinoTextSelectionControls(),
                                  textCapitalization: TextCapitalization.none,
                                  enableInteractiveSelection: true,
                                  autofillHints: const [AutofillHints.email],
                                  controller: _email,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  keyboardType: TextInputType.emailAddress,
                                  onSaved: (value) => _email.text = value!,
                                  decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(),
                                      focusColor: CupertinoColors.black,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(0))),
                                      labelText: 'Email Address',
                                      contentPadding: EdgeInsets.all(10)),
                                  validator: (ifemail) =>
                                      !EmailValidator.validate(ifemail!)
                                          ? 'Enter a valid email'
                                          : null),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'Comments:',
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 10),
                            const SizedBox(
                              width: 400,
                              height: 200,
                              child: TextField(
                                maxLines: 8, //or null
                                decoration: InputDecoration(
                                  hintText: 'enter comments here ...',
                                  border: OutlineInputBorder(
                                      gapPadding: 10,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0))),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    side: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 248, 238, 142),
                                        width: 2),
                                    shape: const BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    shadowColor: Colors.black,
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text('Submit'),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: SizedBox(
                    child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView(
                    controller: scrollControllerTwo,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.forward,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text('MAP',
                              style: TextStyle(
                                  letterSpacing: 1.2,
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        height: 300,
                        decoration: const ShapeDecoration(
                            color: CupertinoColors.white,
                            shape: BeveledRectangleBorder(
                                side: BorderSide(
                                    color: CupertinoColors.lightBackgroundGray,
                                    width: 2),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            image: DecorationImage(
                              filterQuality: FilterQuality.high,
                              image: AssetImage(
                                "image/map.gif",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(
                            Icons.forward,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text('ENTRANCE',
                              style: TextStyle(
                                  letterSpacing: 1.2,
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        height: 300,
                        decoration: const ShapeDecoration(
                            color: CupertinoColors.white,
                            shape: BeveledRectangleBorder(
                                side: BorderSide(
                                    color: CupertinoColors.lightBackgroundGray,
                                    width: 2),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                )),
                            image: DecorationImage(
                              filterQuality: FilterQuality.high,
                              image: AssetImage(
                                "image/entrance.jpeg",
                              ),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(height: 30),
                      const Center(
                          child: Text('THE SAFE DEPOSIT COMPANY',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                  letterSpacing: 1.2))),
                      const SizedBox(height: 20),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.2,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Phone: 314-991-3858",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Hours\n\nMon-Fri: 9 a.m.-5 p.m.\n\nSat & Sun: 10 a.m.-2 p.m.\n\nClosed Most National Holidays\n\n\nBy Appointment Outside of Business Hours",
                        style: TextStyle(
                            letterSpacing: 1.1,
                            wordSpacing: 1.1,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 20),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'At Lindbergh & Garabaldi\n\n515 S Lindbergh Blvd\n\nSt Louis MO 63131\n\n\nboxes@thesafedepositcompany.com',
                        style: TextStyle(
                            letterSpacing: 1.1,
                            wordSpacing: 1.1,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.2,
                      ),
                    ],
                  ),
                )))
          ],
        ));
  }
}
