import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/Homepage/dashboard.dart';
import 'package:tymo_app/Views/Widgets/Homepage/drawerListstyle.dart';
import 'package:tymo_app/Views/profile/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<IconData> icons = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page = 1;

  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSction() {
    return PageView(
      controller: pageController,
      children: [
        Profile(),
        Dashboard(),
        Container(
          color: Colors.blue,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            "assests/images/logo3.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 70,
            height: 70,
            child: Image.asset("assests/images/logo2.png"),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                        child: CircularProfileAvatar("",
                            backgroundColor: Colors.indigo,
                            borderWidth: 1,
                            borderColor: Colors.deepOrange,
                            radius: 40,
                            elevation: 40,
                            cacheImage: true,
                            errorWidget: (context, url, error) {
                              return Icon(
                                Icons.face,
                                size: 50,
                              );
                            },
                            onTap: () {
                              setState(() {
                                page = 0;
                                pageController.animateToPage(0,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              });
                              Navigator.of(context).pop();
                            },
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return Container(
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "@username",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "username@gmail.com",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.cyan,
                                  letterSpacing: 0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Text(
                        "Premium",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(),
            ),
            Column(
              children: [
                Drawerliststyle(
                    text: "Subscription",
                    icon: FontAwesomeIcons.solidCreditCard),
                Drawerliststyle(
                    text: "Settings", icon: FontAwesomeIcons.steamSymbol),
                Drawerliststyle(text: "Help", icon: FontAwesomeIcons.info),
                Drawerliststyle(text: "Feedback", icon: FontAwesomeIcons.ferry),
                Drawerliststyle(
                    text: "Tell Others", icon: FontAwesomeIcons.teethOpen),
                Drawerliststyle(
                    text: "Rate App", icon: FontAwesomeIcons.replyAll),
              ],
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Divider(),
                  Drawerliststyle(
                      text: "Sign Out", icon: FontAwesomeIcons.rightFromBracket)
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: page,
        onTap: (p0) {
          setState(() {
            page = p0;
            pageController.animateToPage(page,
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          });
        },
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 400,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
      ),
      body: pageViewSction(),
    );
  }
}
