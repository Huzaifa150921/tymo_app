import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tymo_app/Interfaces/Auth/forgot_password.dart';
import 'package:tymo_app/Views/Widgets/Auth/auth_heading.dart';
import 'package:tymo_app/Views/Widgets/Auth/auth_textfeild.dart';

class ForgotPass extends StatelessWidget {
  ForgotPass({super.key});
  final RoundedLoadingButtonController _forgotpassbtnController =
      RoundedLoadingButtonController();
  final ForgotPassword forgotPassword = ForgotPassword();
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              AuthHeading(
                  maintext: "Forgot Your Password?",
                  subtext: "",
                  logo: "assests/images/logo.png",
                  logosize: 40,
                  fontsize: 18),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assests/images/logo2.png",
                  filterQuality: FilterQuality.high,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              AuthTextfeild(
                controller: forgotPassword.emailcontroller,
                labeltext: "Email",
                obsecuretxt: false,
                icon: Icons.alternate_email,
                iconsize: 16,
                fontsize: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  borderRadius: 10,
                  color: Color(0xff00C1AA),
                  width: double.infinity,
                  controller: _forgotpassbtnController,
                  onPressed: () {
                    print("Hi");
                  },
                  child: Text('Login',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
