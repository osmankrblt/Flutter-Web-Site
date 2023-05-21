import 'package:electric_web/constants.dart';
import 'package:electric_web/home_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'service_page.dart';
import 'widgets/footer.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map<int, Widget> pages = {0: const HomePage(), 1: ServicePage()};

  late Widget selectedPage;

  @override
  void initState() {
    super.initState();
    selectedPage = pages[0]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Visibility(
        maintainState: true,
        visible: isWeb(context) ? true : true,
        child: Drawer(
            elevation: 10,
            child: ListView(
              shrinkWrap: true,
              children: [
                TextButton(
                  onPressed: () {
                    selectedPage = pages[0]!;
                    setState(() {});
                  },
                  child: Text(
                    "Home",
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    selectedPage = pages[1]!;
                    setState(() {});
                  },
                  child: Text(
                    "Service",
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Porfolio",
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact",
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            )),
      ),
      body: ListView(children: [
        Container(
          height: getHeight(context),
          width: getWidth(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "./page_background.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              isWeb(context) ? getAppbar() : getMobileAppbar(),
              Expanded(
                child: selectedPage,
              ),
            ],
          ),
        ),
        myFooter(),
      ]),
    );
  }

  Widget getAppbar() {
    return PreferredSize(
      preferredSize: Size(getWidth(context), 200),
      child: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Example Electric",
          style: TextStyle(
              fontFamily: "Roboto Mono",
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30),
        ),
        actions: [
          TextButton(
            onPressed: () {
              selectedPage = pages[0]!;
              setState(() {});
            },
            child: Text(
              "Home",
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              selectedPage = pages[1]!;
              setState(() {});
            },
            child: Text(
              "Service",
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Porfolio",
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Contact",
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getMobileAppbar() {
    return PreferredSize(
      preferredSize: Size(getWidth(context), 200),
      child: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Example Electric",
          style: TextStyle(
              fontFamily: "Roboto Mono",
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30),
        ),
      ),
    );
  }
}
