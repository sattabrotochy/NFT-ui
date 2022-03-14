// ignore_for_file: avoid_print, prefer_conditional_assignment

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class TrendingCategoryWidget extends StatefulWidget {
  const TrendingCategoryWidget({Key? key}) : super(key: key);

  @override
  State<TrendingCategoryWidget> createState() => _TrendingCategoryWidgetState();
}

final eventTime = DateTime.parse('2022-05-09 12:41:00');

class _TrendingCategoryWidgetState extends State<TrendingCategoryWidget> {
  static const duration = Duration(seconds: 1);

  int timeDiff = eventTime.difference(DateTime.now()).inSeconds;
  bool isActive = false;

  Timer? timer;
  @override
  void initState() {
    super.initState();

    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
  }

  void handleTick() {
    if (timeDiff > 0) {
      if (isActive) {
        setState(() {
          if (eventTime != DateTime.now()) {
            timeDiff = timeDiff - 1;
          } else {
            print('Times up!');
            //Do something
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                ),
                child: RichText(
                  text: TextSpan(
                    text: '',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Trending  ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 20,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          )),
                      TextSpan(
                          text: ' All Category',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 20,
                            color: buttonBack,
                          )),
                    ],
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_drop_down,
                color: buttonBack,
                size: 40,
              ),
            )
          ],
        ),
        Container(
          height: Get.height / 2.5,
          margin: const EdgeInsets.only(left: 15),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (_, int idnex) {
              return Container(
                height: Get.height / 2.6,
                width: Get.width / 1.4,
                margin: const EdgeInsets.all(5),
                color: const Color(0xFF2A263F),
                child: Column(children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    height: Get.height / 3.8,
                    width: double.maxFinite,
                    child: Stack(
                      children: [
                        Image(
                          height: Get.height / 3.8,
                          width: double.maxFinite,
                          image: const NetworkImage(
                            "https://media.istockphoto.com/photos/non-fungible-token-picture-id1309739869?b=1&k=20&m=1309739869&s=170667a&w=0&h=owcmW9Df4eC2zvLb816jU_4jIu1neDDDJFpPm7cdSYU=",
                          ),
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          right: 10,
                          child: Container(
                              height: 50,
                              color: Colors.black45,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 45,
                                    color: Colors.black54,
                                    child: Text(
                                      "${timeDiff ~/ (24 * 60 * 60) % 24} D",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: Get.width / 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 45,
                                    color: Colors.black54,
                                    child: Text(
                                      "${timeDiff ~/ (60 * 60) % 24} H",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: Get.width / 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 45,
                                    color: Colors.black54,
                                    child: Text(
                                      "${(timeDiff ~/ 60) % 60} m",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: Get.width / 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 45,
                                    color: Colors.black54,
                                    child: Text(
                                      "${timeDiff % 60} s",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: Get.width / 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: textColorWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Syntaxive",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: Get.width / 29,
                                  color: buttonBack),
                            )
                          ],
                        ),
                        Icon(CupertinoIcons.heart,
                            color: Colors.grey, size: Get.width / 25),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Satta Broto Chowdhury",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: Get.width / 29,
                              color: Colors.grey[400]),
                        ),
                        Text(
                          " Min Bid",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: Get.width / 29,
                              color: buttonBack),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Edition 1 of 1",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: Get.width / 29,
                              color: Colors.grey[400]),
                        ),
                        Text(
                          " 0.50 ETH",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: Get.width / 25,
                              color: Colors.grey[400]),
                        ),
                      ],
                    ),
                  ),
                ]),
              );
            },
          ),
        ),
      ],
    );
  }
}
