import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'dart:ui' as prefix0;

import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tymo_app/Views/Features/Album/image_view.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 550,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1H353EhNjMdSW4JyXaFs-rsJuImdFT5m8Mw&s"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                      child: Container(
                        color: Colors.black.withOpacity(0.7),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 20),
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Image(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1H353EhNjMdSW4JyXaFs-rsJuImdFT5m8Mw&s")),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  child: GFAvatar(
                                    backgroundColor: Colors.blue,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: GestureDetector(
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Hero(
                                    tag:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1H353EhNjMdSW4JyXaFs-rsJuImdFT5m8Mw&s",
                                    child: Image(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1H353EhNjMdSW4JyXaFs-rsJuImdFT5m8Mw&s"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  context.pushTransition(
                                    type: PageTransitionType.fade,
                                    child: ImageView(
                                      url:
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1H353EhNjMdSW4JyXaFs-rsJuImdFT5m8Mw&s",
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.heart_broken,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  BalloonSlider(
                                    value: 0,
                                    onChangeStart: (value) {},
                                    onChangeEnd: (value) {},
                                    onChanged: (value) {},
                                    showRope: false,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Captions",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.edit,
                              color: Colors.cyan,
                            ),
                            onTap: () {
                              AwesomeDialog(
                                context: context,
                                animType: AnimType.topSlide,
                                body: TextField(
                                  decoration:
                                      InputDecoration(hintText: "Edit Caption"),
                                ),
                                btnOkOnPress: () {},
                                dialogType: DialogType.info,
                              ).show();
                            },
                          ),
                        ],
                      ),
                      FocusedMenuHolder(
                        menuWidth: MediaQuery.of(context).size.width * 0.50,
                        blurSize: 2.0,
                        menuItemExtent: 45,
                        menuBoxDecoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        duration: Duration(microseconds: 1000),
                        animateMenuItems: true,
                        menuOffset: 10,
                        bottomOffsetHeight: 80,
                        menuItems: [
                          FocusedMenuItem(
                            title: Text("Copy"),
                            onPressed: () {},
                            trailingIcon: Icon(Icons.copy),
                          ),
                          FocusedMenuItem(
                            title: Text("Edit"),
                            onPressed: () {
                              AwesomeDialog(
                                context: context,
                                animType: AnimType.topSlide,
                                body: TextField(
                                  decoration:
                                      InputDecoration(hintText: "Edit Caption"),
                                ),
                                btnOkOnPress: () {},
                                dialogType: DialogType.info,
                              ).show();
                            },
                            trailingIcon: Icon(Icons.edit),
                          ),
                          FocusedMenuItem(
                            title: Text("Delete"),
                            onPressed: () {},
                            trailingIcon: Icon(Icons.delete),
                          ),
                        ],
                        child: ExpandableText(
                          "Your dexcription shows here more dexcription hllo l Your dexcription shows here more dexcription hllo l Your dexcription shows here more dexcription hllo l Your dexcription shows here more dexcription hllo l",
                          expandText: "Show more",
                          collapseText: "Show less",
                          linkColor: Colors.orange,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Comments",
                  textAlign: TextAlign.left,
                ),
                ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTileMoreCustomizable(
                      title: Text("@Huzaifa"),
                      leading: GFAvatar(
                        backgroundColor: Colors.black,
                      ),
                      minVerticalPadding: 10,
                      horizontalTitleGap: 0.0,
                      minLeadingWidth: 60,
                      subtitle: Text("dbsvkjsdjvjkvlvrvrjvrpirere"),
                      trailing: Text("1 min ago"),
                      onLongPress: null,
                      onTap: null,
                    );
                  },
                ),
              ],
            ),
            Positioned(
              right: 0,
              bottom: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Start a conservaton",
                      fillColor: Colors.yellow,
                      filled: true),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
