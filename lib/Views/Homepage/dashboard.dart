import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/Widgets/Homepage/dashboard_feature.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Dashboard",
              textAlign: TextAlign.center,
              style: GoogleFonts.numans(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Friends",
                textAlign: TextAlign.left,
                style: GoogleFonts.numans(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 1),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 25),
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
                                animateFromOldImageOnUrlChange: true,
                                placeHolder: (context, url) {
                                  return Container(
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Username hello",
                                      style: GoogleFonts.numans(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "lorem nflfd ndfldk nelcew nelkfnf skj",
                                        style: GoogleFonts.numans(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "Offline",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.redAccent,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "User Status",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "N / A",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.redAccent,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "Mood N / A",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: DashboardFeature(
                  icon: Icons.phone,
                  text: "Device Info",
                ),
              ),
              Flexible(
                child: DashboardFeature(
                  icon: Icons.browse_gallery,
                  text: "Gallery",
                ),
              ),
              Flexible(
                child: DashboardFeature(
                  icon: Icons.mood,
                  text: "Mood",
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Features",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: DashboardFeature(
                          icon: Icons.play_arrow,
                          text: "Playlist",
                        ),
                      ),
                      Flexible(
                        child: DashboardFeature(
                          icon: Icons.location_city,
                          text: "Location",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: DashboardFeature(
                          icon: Icons.today_outlined,
                          text: "To Do List",
                        ),
                      ),
                      Flexible(
                        child: DashboardFeature(
                          icon: Icons.directions_subway_filled,
                          text: "Diary",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: DashboardFeature(
                          icon: Icons.notes,
                          text: "Suprise Notes",
                        ),
                      ),
                      Flexible(
                        child: DashboardFeature(
                          icon: Icons.score_sharp,
                          text: "Horoscopes",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
