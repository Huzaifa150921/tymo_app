import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tymo_app/Views/Features/Album/friends%20_album.dart';
import 'package:tymo_app/Views/Features/Album/my_album.dart';

class AlbumMain extends StatefulWidget {
  AlbumMain({super.key});

  @override
  State<AlbumMain> createState() => _AlbumMainState();
}

class _AlbumMainState extends State<AlbumMain>
    with SingleTickerProviderStateMixin {
  List<IconData> icons = [
    Icons.person_outline,
    Icons.people_outline,
  ];
  int page = 0;
  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    curve = CurvedAnimation(
      parent: animationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    Widget pageViewSction() {
      return PageView(
        controller: pageController,
        children: [MyAlbum(), FriendsAlbum()],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 50,
            child: Image.asset(
              "assests/images/logo2.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          onPressed: () {},
          splashColor: Colors.yellow,
          elevation: 10,
          backgroundColor: Colors.yellowAccent,
          shape: CircleBorder(),
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: page,
        onTap: (p0) {
          setState(() {
            page = p0;

            pageController.animateToPage(page,
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          });
        },
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        splashSpeedInMilliseconds: 400,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.center,
      ),
      body: pageViewSction(),
    );
  }
}
