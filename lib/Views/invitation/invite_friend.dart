import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tymo_app/Views/invitation/accept_invite.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 50,
            child: Image.asset(
              "assests/images/logo2.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: GestureDetector(
                onTap: () {
                  context.pushTransition(
                    type: PageTransitionType.rightToLeft,
                    child: AcceptInvite(),
                  );
                },
                child: Icon(
                  Icons.person_outline,
                  color: Colors.purple,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 40,
              alignment: Alignment.center,
              child: Text(
                "Find you friends",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 3,
                              blurRadius: 10),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            hintText: "Hi Huzaifa Enter username",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 3,
                            blurRadius: 10),
                      ],
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   width: double.infinity,
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 20),
            //     child: Card(
            //       elevation: 10,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(10))),
            //       child: Container(
            //         height: 100,
            //         child: Column(
            //           children: [
            //             Row(
            //               children: [
            //                 Padding(
            //                   padding: EdgeInsets.fromLTRB(10, 20, 5, 15),
            //                   child: Container(
            //                     height: 60,
            //                     width: 60,
            //                     child: CircularProfileAvatar(
            //                       "",
            //                       backgroundColor: Colors.blue,
            //                       radius: 35,
            //                     ),
            //                   ),
            //                 ),
            //                 Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: <Widget>[
            //                     Padding(
            //                       padding: EdgeInsets.only(top: 5, bottom: 5),
            //                       child: Text(
            //                         "@username",
            //                         style: GoogleFonts.poppins(fontSize: 17),
            //                       ),
            //                     ),
            //                     Padding(
            //                       padding: EdgeInsets.only(left: 0.0),
            //                       child: Text(
            //                         "Name",
            //                         style: GoogleFonts.poppins(fontSize: 17),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 Spacer(),
            //                 Padding(
            //                   padding: EdgeInsets.all(8.0),
            //                   child: Row(
            //                     children: [
            //                       GFButton(
            //                         color: Colors.green,
            //                         text: "Send Request",
            //                         shape: GFButtonShape.pills,
            //                         onPressed: () {},
            //                       )
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("assests/images/bg.jpeg"),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Invite your friend to tymo"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              child: Text(
                "Invite a frirnd",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
