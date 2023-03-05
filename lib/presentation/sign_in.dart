import 'package:flutter/foundation.dart';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'passwordreset.dart';

class AccessScreen extends StatefulWidget {
  const AccessScreen({Key? key}) : super(key: key);

  @override
  State<AccessScreen> createState() => _AccessScreenState();
}

class _AccessScreenState extends State<AccessScreen> {
  String message = 'click here to reset password';
  RegExp passValid = RegExp(r"(?=.*\d{2,4})(?=.*[A-Z])(?=.*\W)");
  bool passwordValidate(String pass) {
    String password = pass.trim();
    if (passValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  final emailController = TextEditingController();
  final psswordController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final cityController = TextEditingController();
  final dobController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final numberController = TextEditingController();
  final regionController = TextEditingController();
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;

  bool isPasswordVissible = false;
  //static List title = ['Create an account (optional)'];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return 
         Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left:30.0, right:30),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 23, color: Colors.black54),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Text("Email Address",
                          style: TextStyle(fontSize: 14, color: Colors.black54)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildemail(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildpasswoerd(),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 50),
                            backgroundColor: Colors.blueAccent,
                            side: const BorderSide(
                                color: Color.fromARGB(255, 248, 238, 142),
                                width: 2),
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            shadowColor: Colors.black,
                          ),
                          onPressed: () {
                            if (kDebugMode) {
                              print('Email:${emailController.text}');
                            }
                            if (kDebugMode) {
                              print('Password:${psswordController.text}');
                            }
                            final form = formkey.currentState!;
                            if (form.validate()) {
                              setState(() {});
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          )),
                    ),
                    // IconButton(
                    //   hoverColor: Colors.transparent,
                    //   icon: const Icon(CupertinoIcons.play_arrow_solid,
                    //       opticalSize: 7, color: CupertinoColors.activeBlue),
                    //   onPressed: () {
                    //     Navigator.of(context).push(MaterialPageRoute(
                    //         builder: (context) => const passwordScreen()));
                    //   },
                    // ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const passwordScreen()));
                        if (kDebugMode) {
                          print('Forgot password');
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Tooltip(
                          decoration: const BoxDecoration(
                              color: CupertinoColors.lightBackgroundGray,
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          excludeFromSemantics: true,
                          preferBelow: true,
                          message: message,
                          textStyle: const TextStyle(
                              fontSize: 14, color: CupertinoColors.white),
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                                fontSize: 12, color: CupertinoColors.activeBlue),
                          ),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
        );
  }

  phonenumbercheckbox(StateSetter setState) => Checkbox(
      value: isChecked7,
      // ignore: non_constant_identifier_names
      onChanged: (checked) => setState(() {
            isChecked7 = !isChecked7;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);

  citycheckbox(StateSetter setState) => Checkbox(
      value: isChecked6,
      // ignore: non_constant_identifier_names
      onChanged: (checked) => setState(() {
            isChecked6 = !isChecked6;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);

  regioncheckbox(StateSetter setState) => Checkbox(
      value: isChecked5,
      // ignore: non_constant_identifier_names
      onChanged: (checked) => setState(() {
            isChecked5 = !isChecked5;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);

  passwordcheckbox(StateSetter setState) => Checkbox(
      value: isChecked4,
      onChanged: (checked) => setState(() {
            isChecked4 = !isChecked4;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);

  emailcheckbox(StateSetter setState) => Checkbox(
      value: isChecked3,
      onChanged: (checked) => setState(() {
            isChecked3 = !isChecked3;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);

  dobcheckbox(StateSetter setState) => Checkbox(
      value: isChecked2,
      onChanged: (checked) => setState(() {
            isChecked2 = !isChecked2;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);
  lnamecheckbox(setState) => Checkbox(
      value: isChecked1,
      onChanged: (checked) => setState(() {
            isChecked1 = !isChecked1;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);

  fnamecheckbox(setState) => Checkbox(
      value: isChecked,
      onChanged: (checked) => setState(() {
            isChecked = !isChecked;
          }),
      checkColor: CupertinoColors.white,
      activeColor: CupertinoColors.activeGreen);

  buildpasswoerd() => Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: TextFormField(
          readOnly: false,
          textCapitalization: TextCapitalization.characters,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: psswordController,
          validator: (password) {
            if (password!.isEmpty && password.length < 6) {
              return 'Please enter password ';
            }
            bool result = passwordValidate(password);
            if (result) {
              return null;
            } else {
              return 'please enter correct password';
            }
          },
          maxLength: 12,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'password',
            prefixIcon: const Icon(
              CupertinoIcons.lock,
              color: CupertinoColors.extraLightBackgroundGray,
            ),
            suffixIcon: IconButton(
              hoverColor: Colors.transparent,
              icon: Tooltip(
                message: 'hide characters',
                textStyle:
                    const TextStyle(fontSize: 11, color: CupertinoColors.white),
                child: isPasswordVissible
                    ? const Icon(
                        Icons.visibility_off,
                        size: 15,
                        color: Colors.grey,
                      )
                    : const Icon(Icons.visibility,
                        size: 15, color: Colors.blueAccent),
              ),
              onPressed: () =>
                  setState(() => isPasswordVissible = !isPasswordVissible),
            ),
          ),
          obscureText: isPasswordVissible,
        ),
      );

  buildemail() => Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: emailController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Email',
          // errorText: 'enter a correct Email Address',
          prefixIcon: const Icon(Icons.email,
              color: CupertinoColors.extraLightBackgroundGray),
          prefixIconColor: Colors.brown,
          suffixIcon: emailController.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  hoverColor: Colors.transparent,
                  onPressed: () => emailController.clear(),
                  icon: const Icon(Icons.clear),
                ),
        ),
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        validator: (ifemail) =>
            !EmailValidator.validate(ifemail!) ? 'Enter a valid email' : null,
      ));
}
