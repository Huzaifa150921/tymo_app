import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/Widgets/device%20specs/device_specs_card.dart';

class DeviceSpec extends StatelessWidget {
  const DeviceSpec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            "assests/images/logo3.png", // Fixed typo in 'assests' to 'assets'
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
            colors: [Color.fromARGB(255, 49, 144, 221), Colors.tealAccent],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 40, bottom: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Device Information",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.only(bottom: 50, left: 20, right: 20),
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: DeviceSpecsCard(
                                    maintext: "Total RAM", subtext: "5.57 GB"),
                              ),
                              Expanded(
                                flex: 2,
                                child: DeviceSpecsCard(
                                    maintext: "Refresh Rate", subtext: "50 Hz"),
                              ),
                              Expanded(
                                flex: 3,
                                child: DeviceSpecsCard(
                                    maintext: "Finger Print",
                                    subtext: "Present"),
                              ),
                              Expanded(
                                flex: 3,
                                child: DeviceSpecsCard(
                                    maintext: "Finger Print Sensor",
                                    subtext: "Yes"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsets.only(bottom: 50, left: 20, right: 20),
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: DeviceSpecsCard(
                                    maintext: "External Memory",
                                    subtext: "230 GB / 500 GB"),
                              ),
                              Expanded(
                                flex: 3,
                                child: DeviceSpecsCard(
                                    maintext: "Internal Memory",
                                    subtext: "60 GB"),
                              ),
                              Expanded(
                                flex: 2,
                                child: DeviceSpecsCard(
                                    maintext: "Screen Size", subtext: "40 x 4"),
                              ),
                              Expanded(
                                flex: 2,
                                child: DeviceSpecsCard(
                                    maintext: "Resoulation", subtext: "1024"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
