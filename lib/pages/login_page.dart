import 'package:flutter/material.dart';
import 'package:flutter_catalouge/utils/routes.dart';
import 'package:gap/gap.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(100),
              SizedBox(
                height: 200,
                // width: 200,
                child: Image.asset(
                  "assets/images/login_image.png",
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(20),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    TextFormField(
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    Gap(30),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(milliseconds: 450));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        height: 40,
                        duration: Duration(milliseconds: 450),
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done_rounded,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 60 : 10)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
