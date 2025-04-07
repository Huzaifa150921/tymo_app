import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tymo_app/Views/Widgets/Auth/auth_textfeild.dart';
import 'package:tymo_app/Views/invitation/invite_friend.dart';

class ProfileSetup extends StatefulWidget {
  ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profilebtnController =
      RoundedLoadingButtonController();

  bool ismale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            "assests/images/logo3.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assests/images/bg.jpeg"),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Text("Profile_setup",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 10,
                        letterSpacing: 2)),
              ),
              SizedBox(
                height: 40,
              ),
              CircularProfileAvatar(
                "assests/images/profile.png",
                backgroundColor: Colors.black,
                initialsText: Text(
                  "+",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextfeild(
                    labeltext: "Your name",
                    obsecuretxt: false,
                    icon: Icons.face,
                    fontsize: 16,
                    iconsize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: AuthTextfeild(
                    labeltext: "Your username",
                    obsecuretxt: false,
                    icon: Icons.email,
                    fontsize: 16,
                    iconsize: 15),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: ismale ? Colors.cyan : Colors.grey,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0, 10),
                                  blurRadius: 30),
                            ]),
                        child: Icon(
                          Icons.male,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ismale = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: !ismale ? Colors.pink : Colors.grey,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0, 10),
                                  blurRadius: 30)
                            ]),
                        child: Icon(
                          Icons.female,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  borderRadius: 10,
                  color: Color(0xff00C1AA),
                  controller: _profilebtnController,
                  onPressed: () {
                    Timer(Duration(seconds: 3), () {
                      _profilebtnController.success();
                      context.pushReplacementTransition(
                        type: PageTransitionType.fade,
                        child: InviteFriend(),
                      );
                    });
                  },
                  child: Text('Next',
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
