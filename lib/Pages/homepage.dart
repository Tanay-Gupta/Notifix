import 'package:appnewui/Pages/HomePageItems/appbar.dart';
import 'package:appnewui/Pages/HomePageItems/floatingNotice.dart';
import 'package:appnewui/Pages/HomePageItems/itemBox.dart';
import 'package:appnewui/Pages/HomePageItems/timetableBox.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            TopBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    FloatingNotice(),
                    // const SizedBox(
                    //   height: 2,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TimeTableBox(),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Lottie.asset(
                            "assets/images/48581-asteroid-exploration.json",
                            height: 150),
                        const Text(
                          "Explore          Nearby",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const ItemBox()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
