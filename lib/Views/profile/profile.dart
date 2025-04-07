import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "My Profile",
            style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: CircularProfileAvatar("",
                backgroundColor: Colors.indigo,
                borderWidth: 1,
                borderColor: Colors.deepOrange,
                radius: 80,
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
          Text(
            "username",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
                color: Colors.grey),
          ),
          Text("@username.com",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  color: Colors.grey)),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Rounded corners
                side: BorderSide(
                  color: Colors.purple,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Text(
              "Invite a friend",
              style: GoogleFonts.poppins(
                color: Colors.purple,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CardDetailRow(
            icon: Icons.email,
            type: "Email",
            clr: Colors.grey,
            val: "username@gmail.com",
          ),
          CardDetailRow(
            icon: Icons.countertops,
            type: "Country",
            clr: Colors.white,
            val: "Pakistan",
          ),
          CardDetailRow(
            icon: Icons.phone,
            type: "Phone",
            clr: Colors.grey,
          ),
          more
              ? CardDetailRow(
                  icon: Icons.generating_tokens_rounded,
                  type: "Gender",
                  clr: Colors.white,
                  val: "Male",
                )
              : Container(),
          more
              ? CardDetailRow(
                  icon: Icons.paragliding,
                  type: "Partner",
                  clr: Colors.grey,
                  val: "username",
                )
              : Container(),
          more
              ? CardDetailRow(
                  icon: Icons.update_disabled,
                  type: "UID",
                  clr: Colors.white,
                  val: "3439798",
                )
              : Container(),
          more
              ? CardDetailRow(
                  icon: Icons.account_balance,
                  type: "Account",
                  clr: Colors.grey,
                  val: "12/3/2003",
                )
              : Container(),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Rounded corners
                side: BorderSide(
                  color: Colors.purple, // Border color
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              backgroundColor: Colors.grey, // Button background color
            ),
            onPressed: () {
              setState(() {
                more = !more; // Toggle visibility state
              });
            },
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                more ? "- Show less" : "+ Show more",
                key: ValueKey<bool>(
                    more), // Add key to optimize animation changes
                style: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed To",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "Premium",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed On",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "N / A",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  final IconData icon;
  final String type;
  final String? val; // Nullable value to check empty case
  final Color clr;

  const CardDetailRow({
    super.key,
    required this.icon,
    required this.type,
    this.val,
    required this.clr,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity, // Full width

        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: clr, // Background color
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.black, size: 24), // Icon
            const SizedBox(width: 10),
            Text(
              "$type:", // Label text
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: TextEditingController(
                    text: val ?? "Not Set"), // Default value
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: val == null || val!.isEmpty
                      ? Colors.red
                      : Colors.black, // Show red if empty
                ),
                readOnly: true, // Prevent editing
                showCursor: false, // Hide cursor
                decoration: const InputDecoration(
                  border: InputBorder.none, // Remove input border
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
