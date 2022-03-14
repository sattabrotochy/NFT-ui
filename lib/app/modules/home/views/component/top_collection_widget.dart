import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class TopCollectionWidget extends StatelessWidget {
  const TopCollectionWidget({Key? key}) : super(key: key);

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
                          text: 'Top Collection ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: Get.width / 20,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          )),
                      TextSpan(
                          text: ' Last 2 Day',
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

        MasonryGridView.count(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2, itemBuilder: (_,int index){
          return Container(
            height: Get.height / 3.7,
            width: Get.width / 2.2,
            margin: const EdgeInsets.all(5),
            color: const Color(0xFF2A263F),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                height: Get.height / 5.8,
                width: double.maxFinite,
                child: Stack(
                  children: [
                    Image(
                      height: Get.height / 5.8,
                      width: double.maxFinite,
                      image: const NetworkImage(
                        "https://media.istockphoto.com/photos/non-fungible-token-picture-id1309739869?b=1&k=20&m=1309739869&s=170667a&w=0&h=owcmW9Df4eC2zvLb816jU_4jIu1neDDDJFpPm7cdSYU=",
                      ),
                      fit: BoxFit.cover,
                    ),
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
                          height: 10,
                          width: 10,
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
                              fontSize: Get.width / 35,
                              color: buttonBack),
                        )
                      ],
                    ),
                    Icon(CupertinoIcons.heart, color: Colors.grey, size: Get.width / 25),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Satta Broto Chowdhury",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: Get.width / 35,
                                color: Colors.grey[400]),
                          ),
                        )),
                    Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            " Min Bid",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: Get.width / 35,
                                color: buttonBack),
                          ),
                        )),
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
                          fontSize: Get.width / 35,
                          color: Colors.grey[400]),
                    ),
                    Text(
                      " 0.50 ETH",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontSize: Get.width / 32,
                          color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
            ]),
          );
        }),






      ],
    );
  }
}
