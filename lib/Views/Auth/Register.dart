import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tymo_app/Controller/UserController/usercontroller.dart';
import 'package:tymo_app/Interfaces/Auth/register_services.dart';
import 'package:tymo_app/Views/Auth/Login.dart';
import 'package:tymo_app/Views/Widgets/Auth/auth_heading.dart';
import 'package:tymo_app/Views/Widgets/Auth/auth_textfeild.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerbtnController =
      RoundedLoadingButtonController();
  final RegisterServices registerServices = RegisterServices();
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
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
                maintext: "Sign up to tymo",
                subtext: "to connect with \nyour partner",
                logo: "assests/images/logo.png",
                logosize: 40.sp,
                fontsize: 18,
              ),
              const SizedBox(height: 30),
              AuthTextfeild(
                controller: registerServices.emailcontroller,
                labeltext: "Email",
                obsecuretxt: false,
                icon: Icons.alternate_email,
                iconsize: 16,
                fontsize: 15,
              ),
              const SizedBox(height: 15),
              AuthTextfeild(
                controller: registerServices.passwordcontroller,
                labeltext: "Password",
                obsecuretxt: true,
                icon: Icons.lock,
                iconsize: 16,
                fontsize: 15,
              ),
              const SizedBox(height: 15),
              AuthTextfeild(
                controller: registerServices.confirmpasswordcontroler,
                labeltext: "Confirm Password",
                obsecuretxt: true,
                icon: Icons.lock_reset,
                iconsize: 16,
                fontsize: 15,
              ),
              const SizedBox(height: 30),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  borderRadius: 10,
                  color: Color(0xff00C1AA),
                  width: screenwidth * 0.9,
                  controller: _registerbtnController,
                  onPressed: () {
                    if (registerServices.passwordcontroller.text ==
                        registerServices.confirmpasswordcontroler.text) {
                      UserController().registerUser(
                          registerServices.emailcontroller.text,
                          registerServices.passwordcontroller.text);
                    } else {
                      print("dont match");
                    }
                  },
                  child: Text('Register',
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
                child: Text(
                  "By Registering you are agree to our term and conditions",
                  style: GoogleFonts.poppins(
                    color: Colors.lightBlue,
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushReplacementTransition(
                        type: PageTransitionType.fade,
                        child: Login(),
                      );
                    },
                    child: Text(
                      "Sign in",
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
