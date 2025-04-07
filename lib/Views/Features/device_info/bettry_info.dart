import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tymo_app/Views/Widgets/deice_info/bettry_iinfo/bettry_info_card.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
            colors: [Colors.orange, Colors.pink],
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
                  "Battery Status",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Expanded(
                                child: BatteryInfoCard(
                                  maintext: "Status",
                                  subtext: "Discharge",
                                ),
                              ),
                              Expanded(
                                child: BatteryInfoCard(
                                  maintext: "Changing Type",
                                  subtext: "-",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: BatteryInfoCard(
                                maintext: "Charging%",
                                subtext: "N / A",
                                subwidget: SleekCircularSlider(
                                  min: 0,
                                  max: 100,
                                  initialValue: 75,
                                  appearance: CircularSliderAppearance(
                                    customWidths: CustomSliderWidths(
                                      trackWidth:
                                          8, // Width of the track (background)
                                      progressBarWidth:
                                          12, // Width of the progress indicator
                                      shadowWidth:
                                          15, // Width for the shadow effect
                                    ),
                                    customColors: CustomSliderColors(
                                      trackColor: Colors.grey
                                          .shade300, // Background track color
                                      progressBarColors: [
                                        Colors.purple.shade400,
                                        Colors.blueAccent.shade700,
                                        Colors.redAccent.shade400
                                      ], // Gradient color effect
                                      dotColor:
                                          Colors.white, // Center dot color
                                      hideShadow: false, // Enable shadow effect
                                      shadowColor:
                                          Colors.black.withOpacity(0.2),
                                      shadowMaxOpacity:
                                          0.4, // Max opacity of shadow
                                    ),
                                    infoProperties: InfoProperties(
                                      bottomLabelText: "Battery",
                                      bottomLabelStyle: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54,
                                      ),
                                      mainLabelStyle: GoogleFonts.poppins(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent.shade700,
                                      ),
                                    ),
                                    size: 100, // Size of the entire slider
                                    startAngle:
                                        150, // Starting angle of the slider
                                    angleRange:
                                        240, // Defines the arc of the circle
                                    animationEnabled:
                                        true, // Enables animation on load
                                  ),
                                  onChange: (double value) {
                                    // You can handle slider value changes here
                                    print('Battery Level: $value');
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: BatteryInfoCard(
                                maintext: "Temprature",
                                subtext: "23.0",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: BatteryInfoCard(
                                maintext: "Status",
                                subtext: "Discharge",
                              ),
                            ),
                            Expanded(
                              child: BatteryInfoCard(
                                maintext: "Changing Type",
                                subtext: "-",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          " My Battery Status",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: BatteryInfoCard(
                                        maintext: "Status",
                                        subtext: "Discharge",
                                        clr: Colors.orange,
                                      ),
                                    ),
                                    Expanded(
                                      child: BatteryInfoCard(
                                        maintext: "Charging Type",
                                        subtext: "-",
                                        clr: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    BatteryInfoCard(
                                      maintext: "Charging%",
                                      subtext: "N / A",
                                      clr: Colors.orange,
                                      subwidget: SleekCircularSlider(
                                        min: 0,
                                        max: 100,
                                        initialValue: 75,
                                        appearance: CircularSliderAppearance(
                                          customWidths: CustomSliderWidths(
                                            trackWidth:
                                                8, // Track background width
                                            progressBarWidth:
                                                12, // Progress indicator width
                                            shadowWidth:
                                                15, // Shadow effect width
                                          ),
                                          customColors: CustomSliderColors(
                                            trackColor: Colors
                                                .grey.shade300, // Track color
                                            progressBarColors: [
                                              Colors.purple.shade400,
                                              Colors.blueAccent.shade700,
                                              Colors.redAccent.shade400
                                            ], // Gradient effect
                                            dotColor: Colors
                                                .white, // Center dot color
                                            hideShadow: false, // Enable shadow
                                            shadowColor:
                                                Colors.black.withOpacity(0.2),
                                            shadowMaxOpacity:
                                                0.4, // Max opacity
                                          ),
                                          infoProperties: InfoProperties(
                                            bottomLabelText: "Battery",
                                            bottomLabelStyle:
                                                GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54,
                                            ),
                                            mainLabelStyle: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueAccent.shade700,
                                            ),
                                          ),
                                          size: 100, // Slider size
                                          startAngle: 150, // Start angle
                                          angleRange: 240, // Arc range
                                          animationEnabled:
                                              true, // Enable animation
                                        ),
                                        onChange: (double value) {
                                          // Handle slider value changes
                                          print('Battery Level: $value');
                                        },
                                      ),
                                    ),
                                    BatteryInfoCard(
                                      maintext: "Temperature",
                                      subtext: "23.0",
                                      clr: Colors.orange,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: BatteryInfoCard(
                                      maintext: "Status",
                                      subtext: "Discharge",
                                      clr: Colors.orange,
                                    ),
                                  ),
                                  Expanded(
                                    child: BatteryInfoCard(
                                      maintext: "Charging Type",
                                      subtext: "-",
                                      clr: Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
