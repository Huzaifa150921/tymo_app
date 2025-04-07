import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/profile/profile_setting_subfeild.dart';
import 'package:tymo_app/Views/profile/setting_heading.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 130),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        Text(
                          "Settings",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Row(
                              children: [
                                CircularProfileAvatar("",
                                    backgroundColor: Colors.indigo,
                                    borderWidth: 1,
                                    borderColor: Colors.deepOrange,
                                    radius: 30,
                                    elevation: 40,
                                    cacheImage: true,
                                    errorWidget: (context, url, error) {
                                      return Icon(
                                        Icons.face,
                                        size: 50,
                                      );
                                    },
                                    animateFromOldImageOnUrlChange: true,
                                    placeHolder: (context, url) {
                                      return Container(
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    }),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Ctest",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.grey.shade200,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SettingHeading(
                            headingtext: "Profile Setting",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ProfileSettingSubfeild(
                            title: "Edit Email",
                          ),
                          ProfileSettingSubfeild(
                            title: "Edit Phone",
                          ),
                          ProfileSettingSubfeild(
                            title: "Edit Password",
                          ),
                          ProfileSettingSubfeild(
                            title: "Email Status",
                            secodarywidget: Row(
                              children: [
                                Text(
                                  "Not Verified",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16, color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SettingHeading(headingtext: "Notification Setting"),
                          ProfileSettingSubfeild(
                            title: "Push Notification",
                            secodarywidget: GFToggle(
                              onChanged: (val) {},
                              value: true,
                              type: GFToggleType.android,
                            ),
                          ),
                          SettingHeading(headingtext: "Application Setting"),
                          ProfileSettingSubfeild(
                            title: "Push Notification",
                            secodarywidget: GFToggle(
                              onChanged: (val) {},
                              value: true,
                              type: GFToggleType.android,
                            ),
                          ),
                          ProfileSettingSubfeild(
                            title: "Background Updates",
                            secodarywidget: Row(
                              children: [
                                Text(
                                  "Not Allowed",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16, color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
