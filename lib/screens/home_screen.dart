import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_learn/widgets/custom_tab_indicator.dart';
import 'package:flutter_learn/models/volcano_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: ListView(physics: BouncingScrollPhysics(), children: <Widget>[
        // NavBar
        Container(
            height: 57.6,
            margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Color(0x080a0928),
                    ),
                    child: Icon(Entypo.menu)),
                Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Color(0x080a0928),
                    ),
                    child: Icon(Entypo.search)),
              ],
            )),
        // MAGMA Indonesia title
        Padding(
          padding: EdgeInsets.only(top: 48, left: 28.8),
          child: Text(
            'MAGMA Indonesia',
            style: GoogleFonts.lato(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        // Sub heading
        Padding(
          padding: EdgeInsets.only(left: 28.8),
          child: Text(
            'Bridging the will of nature to society',
            style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        // Tab Bar menu
        Container(
            height: 30,
            margin: EdgeInsets.only(left: 14.4, top: 28.8),
            child: DefaultTabController(
                length: 3,
                child: TabBar(
                    labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    isScrollable: true,
                    labelColor: Color(0xFF000000),
                    unselectedLabelColor: Color(0xFF8a8a8a),
                    labelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    indicator: RoundedRectangleTabIndicator(
                        color: Color(0xFF000000), weight: 2.4, width: 14.4),
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text('Gunung Api'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Gerakan Tanah'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Gempa Bumi dan Tsunami'),
                        ),
                      ),
                    ]))),
        // Image
        Container(
            height: 218.4,
            margin: EdgeInsets.only(left: 0, top: 16),
            child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    volcanoes.length,
                    (int index) => Container(
                        margin: EdgeInsets.only(right: 24.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(volcanoes[index].image)),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 19.2,
                              left: 19.2,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaY: 19.2, sigmaX: 19.2),
                                      child: Container(
                                        height: 36,
                                        padding: EdgeInsets.only(
                                            left: 16.72, right: 14.4),
                                        alignment: Alignment.centerLeft,
                                        child: Row(children: <Widget>[
                                          Icon(Entypo.location,
                                              color: Colors.white),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(volcanoes[index].name,
                                              style: GoogleFonts.lato(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ))
                                        ]),
                                      ))),
                            )
                          ],
                        ))))),
      ]),
    )));
  }
}
