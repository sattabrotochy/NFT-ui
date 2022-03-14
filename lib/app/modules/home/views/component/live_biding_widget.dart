import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class LiveBidingWidget extends StatelessWidget {
  const LiveBidingWidget({Key? key}) : super(key: key);
final length = 30;
  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [

          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              "Live Biding",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: Get.width / 20,
                  color: Theme.of(context).textTheme.bodyText1!.color),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            height: Get.height / 3.5,
            width: double.maxFinite,
            color: const Color(0xFF2A263F),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height / 5,
                  child: Stack(children: [
                    Container(
                      height: Get.height / 5,
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: double.maxFinite,
                      child: Image(
                          height: Get.height / 5,
                          width: double.maxFinite,
                          image: const NetworkImage(
                              "https://media.istockphoto.com/photos/live-internet-streaming-of-business-conference-meetingonline-webinar-picture-id1318224799?b=1&k=20&m=1318224799&s=170667a&w=0&h=IFrKareX-EUv35GsKdMxmcvjGeqaTNpadpHN_qWINug="),
                          fit: BoxFit.cover),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 20,
                        child: Row(
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
                                  color: textColorWhite),
                            )
                          ],
                        ))
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Prime App Gradient",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: Get.width / 29,
                              color: Colors.grey[300]),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Min Bid : ",
                                  style: GoogleFonts.inter(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue,
                                      fontSize: Get.width / 29)),
                              TextSpan(
                                  text: "0.50 ETH",
                                  style: GoogleFonts.inter(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: Get.width / 29,
                                  )),
                            ]),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          height: Get.height / 25,
                          width: Get.width / 4,
                          color: buttonBack,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Place a Bid",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                fontSize: Get.width / 29,
                                color: Colors.white),
                          )),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 85,
                            margin: const EdgeInsets.only(left: 15, right: 2),
                            child: Stack(
                              children: [
                                ...List.generate(
                                  length <= 3 ? length : 5,
                                  (index) => Positioned(
                                    left: index * 15,
                                    child: index > 3
                                        ? Container(
                                            height: 25,
                                            width: 25,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: buttonBack,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: textColorWhite,
                                                  width: 1),
                                            ),
                                            child: Text("${length - index}+",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: Get.width / 34,
                                                    color: textColorWhite)),
                                          )
                                        : Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: textColorWhite,
                                                  width: 1),
                                              image: const DecorationImage(
                                                image: NetworkImage(
                                                    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text("Biding",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: Get.width / 29,
                                  color: textColorWhite)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
