import 'package:flutter/material.dart';
import 'package:flutter_catalouge/utils/routes.dart';
import 'package:gap/gap.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const Text(
                "Welcome To Login Screen!",
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    Gap(30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 17),
                      ),
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
