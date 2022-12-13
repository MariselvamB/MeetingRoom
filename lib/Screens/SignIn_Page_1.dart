// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meedingroom/Screens/homeScreenLockerPage.dart';
import 'package:meedingroom/Screens/homeScreenRoomPage.dart';
import 'package:meedingroom/Screens/Level_13_Page.dart';
import 'package:meedingroom/Screens/RoseRoom.dart';
import 'package:meedingroom/Screens/homeScreenSeatPage.dart';

class SignIn_Page extends StatefulWidget {
  const SignIn_Page({super.key, required String title});

  @override
  State<SignIn_Page> createState() => _SignIn_PageState();
}

class _SignIn_PageState extends State<SignIn_Page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _UserNamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.topCenter,
        color: const Color.fromARGB(255, 78, 78, 78),
        child: Stack(
          children: [
            Image.asset(
              "Assets/backrounddesign.png",
            ),
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 435,
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          color: const Color.fromARGB(255, 41, 41, 41),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 52, 146, 255),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 52),
                              child: Image.asset(
                                "Assets/ChopeAiLogo.png",
                                width: 254,
                                height: 66,
                              ),
                            ),
                            const Text(
                              "Welcome",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Lato',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                  color: Color.fromARGB(255, 242, 243, 242)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Sign in to continue",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Lato',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    letterSpacing: 0.5,
                                    color: Color.fromARGB(255, 242, 243, 242)),
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 45, right: 45),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(blurRadius: 5)
                                        ],
                                        color: const Color.fromARGB(
                                            255, 41, 41, 41),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromARGB(
                                              255, 52, 146, 255),
                                        ),
                                      ),
                                      child: (TextFormField(
                                        autofocus: false,
                                        controller: _UserNamecontroller,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please Enter User Name';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.white,
                                            ),
                                          ),
                                          border: InputBorder.none,
                                          counterText: '',
                                          hintText: "User Name",
                                          hintStyle: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontFamily: 'Lato',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              letterSpacing: 0.5,
                                              color: Color.fromARGB(
                                                  255, 242, 243, 242)),
                                        ),
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 45, right: 45),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(blurRadius: 5)
                                        ],
                                        color: const Color.fromARGB(
                                            255, 41, 41, 41),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromARGB(
                                              255, 52, 146, 255),
                                        ),
                                      ),
                                      child: TextFormField(
                                          controller: _passwordcontroller,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please Enter Pasword';
                                            }
                                            return null;
                                          },
                                          obscuringCharacter: "*",
                                          obscureText: _secureText,
                                          decoration: InputDecoration(
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13, right: 13),
                                              child: IconButton(
                                                icon: Icon(
                                                    _secureText
                                                        ? Icons.lock_open
                                                        : Icons.remove_red_eye,
                                                    color: Colors.white),
                                                onPressed: () {
                                                  setState(() {
                                                    _secureText = !_secureText;
                                                  });
                                                },
                                              ),
                                            ),
                                            border: InputBorder.none,
                                            counterText: '',
                                            hintText: "Password",
                                            hintStyle: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontFamily: 'Lato',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                letterSpacing: 0.5,
                                                color: Color.fromARGB(
                                                    255, 242, 243, 242)),
                                          ),
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          maxLength: 16,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Level_13_Page()));
                                            //
                                            // SignIn loginResponse =
                                            //     await NetworkService
                                            //         .signInpost(
                                            //             _UserNamecontroller
                                            //                 .text,
                                            //             _passwordcontroller
                                            //                 .text);
                                            // if (loginResponse.data.message)
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           const roseRoomPage(),
                                            //     ));
                                            // }
                                          }
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 46, right: 46),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  74, 108, 204, 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                top: 19.5,
                                                bottom: 19.5,
                                              ),
                                              child: Text(
                                                "Sign In",
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontFamily: 'Montserrat',
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 18,
                                                    letterSpacing: 0.5,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 45, right: 45),
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          height: 1,
                                          width: double.infinity,
                                        ),
                                        Center(
                                          child: Container(
                                            color: const Color.fromARGB(
                                                255, 41, 41, 41),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 28, right: 28),
                                              child: Text(
                                                "OR",
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontFamily: 'Montserrat',
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                    letterSpacing: 1,
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 45, right: 45),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RoseRoom()));
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(blurRadius: 5)
                                          ],
                                          color: const Color.fromARGB(
                                              255, 41, 41, 41),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 1,
                                            color: const Color.fromARGB(
                                                255, 52, 146, 255),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  bottom: 10,
                                                  left: 30,
                                                  right: 30),
                                              child: Image.asset(
                                                  "Assets/icons_file-type-outlook.png"),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: const Text(
                                                  "Login with Outlook 360",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontFamily: 'Montserrat',
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15,
                                                      letterSpacing: 1,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255))),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 20,
                                          bottom: 10,
                                          left: 30,
                                          right: 45),
                                      alignment: Alignment.center,
                                      child: const Text("Forgot Password?",
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontFamily: 'Lato',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              letterSpacing: 0.5,
                                              color: Color.fromRGBO(
                                                  0, 26, 255, 1))),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                              "Don't have a account?",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontFamily: 'Lato',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  letterSpacing: 0.5,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                          bottom: 10,
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: const Text(" Register",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontFamily: 'Lato',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  letterSpacing: 0.5,
                                                  color: Color.fromRGBO(
                                                      0, 26, 255, 1))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
