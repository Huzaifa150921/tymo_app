import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/Widgets/deice_info/general_info/general_info_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
            colors: [Color.fromARGB(255, 49, 144, 221), Colors.tealAccent],
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
                  "General Info",
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
                                child: GeneralInfoCard(
                                  maintext: "Screen State",
                                  subtext: "Unlocked",
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: GeneralInfoCard(
                                  maintext: "System Volume",
                                  subtext: "0 / 7",
                                  maintext2: "Media Volume",
                                  subtext2: "4 / 7",
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
                              child: GeneralInfoCard(
                                maintext: "Light Activity",
                                subtext: "Dim Light",
                                maintext2: "Light Itensity",
                                subtext2: "4",
                              ),
                            ),
                            Expanded(
                              child: GeneralInfoCard(
                                maintext: "Brighteness",
                                subtext: "23%",
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
                          " My General Info",
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
                                      child: GeneralInfoCard(
                                        maintext: "Screen State",
                                        subtext: "Unlocked",
                                        clr: Colors.tealAccent,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: GeneralInfoCard(
                                        maintext: "System Volume",
                                        subtext: "0 / 7",
                                        maintext2: "Media Volume",
                                        subtext2: "4 / 7",
                                        clr: Colors.tealAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: GeneralInfoCard(
                                      maintext: "Light Activity",
                                      subtext: "Dim Light",
                                      maintext2: "Light Itensity",
                                      subtext2: "4",
                                      clr: Colors.tealAccent,
                                    ),
                                  ),
                                  Expanded(
                                    child: GeneralInfoCard(
                                      maintext: "Brighteness",
                                      subtext: "23%",
                                      clr: Colors.tealAccent,
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
