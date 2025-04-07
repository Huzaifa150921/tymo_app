import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tymo_app/Controller/UserController/usercontroller.dart';
import 'package:tymo_app/Interfaces/Auth/login_services.dart';
import 'package:tymo_app/Views/Auth/Forgot_pass.dart';
import 'package:tymo_app/Views/Auth/Register.dart';
import 'package:tymo_app/Views/Widgets/Auth/auth_heading.dart';
import 'package:tymo_app/Views/Widgets/Auth/auth_textfeild.dart';
import 'package:tymo_app/Views/profile/profile_setup.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();
  final LoginServices loginServices = LoginServices();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tymo",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              AuthHeading(
                maintext: "Sign in to tymo",
                subtext: "to connect with \nyour partner",
                logo: "assests/images/logo.png",
                logosize: 40,
                fontsize: 18,
              ),
              const SizedBox(height: 30),
              AuthTextfeild(
                controller: loginServices.emailcontroller,
                labeltext: "Email",
                obsecuretxt: false,
                icon: Icons.alternate_email,
                iconsize: 16,
                fontsize: 16,
              ),
              const SizedBox(height: 15),
              AuthTextfeild(
                controller: loginServices.passwordcontroller,
                labeltext: "Password",
                obsecuretxt: true,
                icon: Icons.lock,
                iconsize: 16,
                fontsize: 16,
              ),
              const SizedBox(height: 30),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  borderRadius: 10,
                  color: Color(0xff00C1AA),
                  width: 300,
                  controller: _loginbtnController,
                  onPressed: () {
                    UserController().loginuser(
                        loginServices.emailcontroller.text,
                        loginServices.passwordcontroller.text);
                    // Timer(Duration(seconds: 3), () {
                    //   _loginbtnController.success();
                    //   context.pushReplacementTransition(
                    //     type: PageTransitionType.fade,
                    //     child: ProfileSetup(),
                    //   );
                    // });
                  },
                  child: Text('Login',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    context.pushTransition(
                      type: PageTransitionType.fade,
                      child: ForgotPass(),
                    );
                  },
                  child: Text(
                    "Forgot your password?",
                    style: GoogleFonts.poppins(
                      color: Colors.redAccent,
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushReplacementTransition(
                        type: PageTransitionType.fade,
                        child: Register(),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          color: Colors.blue, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
