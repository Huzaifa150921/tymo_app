import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/Widgets/location/location_statys_card.dart';

class LocationStatus extends StatelessWidget {
  const LocationStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            "assests/images/logo3.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 167, 49, 221),
              Color.fromARGB(255, 149, 120, 204)
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Location Status",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LocationStatysCard(
              maintext: "North Loop,West Velley\nlos angles",
              width: 370,
              clrtext: Colors.purple,
              icon: Icons.landslide_sharp,
              height: 140,
              clricon: Colors.red,
            ),
            LocationStatysCard(
              maintext: "United States",
              width: 200,
              clrtext: Colors.purple,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Last Updated:",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "1 min ago",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          " My Location Status",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LocationStatysCard(
                      maintext: "North Loop,West Velley\nlos angles",
                      width: 370,
                      icon: Icons.landslide_sharp,
                      height: 140,
                      clr: Colors.purple,
                    ),
                    LocationStatysCard(
                      maintext: "United States",
                      width: 200,
                      clr: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
