import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tymo_app/Views/Features/button_container.dart';
import 'package:tymo_app/Views/Features/top_banner.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
          TopBanner(
            title: 'Device Info',
            color: [Colors.cyanAccent, Colors.pinkAccent],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: ButtonContainer(title: "User Status"),
                        ),
                        Expanded(
                          flex: 6,
                          child: ButtonContainer(title: "Battery"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: ButtonContainer(title: "General"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: ButtonContainer(title: "Device Specs"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: ButtonContainer(title: "Location"),
                      ),
                      Expanded(
                          flex: 10,
                          child: ButtonContainer(title: "Orientation"))
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
