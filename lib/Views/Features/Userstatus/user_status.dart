import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/Features/builder_card.dart';
import 'package:tymo_app/Views/Features/button_container.dart';

class UserStatus extends StatefulWidget {
  const UserStatus({super.key});
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  String status = "Busy"; // Initial status

  final List<String> statusList = [
    "Available",
    "Busy",
    "Eating",
    "Away",
    "Sleeping",
    "Running",
    "Walking",
    "Hiking",
    "Jogging"
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue, // Set blue background for the entire page
      appBar: AppBar(
        backgroundColor: Colors.blue, // Match app bar color with the page
        title: Container(
          height: screenHeight * 0.1, // Responsive height
          width: screenWidth * 0.2, // Responsive width
          child: Image.asset(
            "assests/images/logo3.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue, // Ensure the section has a blue background
              padding: EdgeInsets.all(screenHeight * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    child: Text(
                      "User status",
                      style: TextStyle(
                        fontSize: screenHeight * 0.025,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(screenHeight * 0.015),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 10,
                                  child:
                                      ButtonContainer(title: "User is Online"),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Expanded(
                                  flex: 6,
                                  child: ButtonContainer(title: "Last in App"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: ButtonContainer(title: "User status"),
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
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenHeight * 0.06),
                  topRight: Radius.circular(screenHeight * 0.06),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "My Status:",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.022,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        status,
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.022,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: (statusList.length / 2)
                          .ceil(), // Use ceil to handle odd counts
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        int firstIndex = index * 2;
                        int secondIndex = firstIndex + 1;

                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    status = statusList[firstIndex];
                                  });
                                },
                                child: BuilderCard(
                                  title: statusList[firstIndex],
                                  clr: status == statusList[firstIndex]
                                      ? Colors.orange
                                      : Colors.redAccent,
                                ),
                              ),
                              if (secondIndex < statusList.length)
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      status = statusList[secondIndex];
                                    });
                                  },
                                  child: BuilderCard(
                                    title: statusList[secondIndex],
                                    clr: status == statusList[secondIndex]
                                        ? Colors.orange
                                        : Colors.redAccent,
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
