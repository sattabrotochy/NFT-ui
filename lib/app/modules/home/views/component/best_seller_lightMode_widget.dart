

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';


class BestSelleLightModerWidget extends StatelessWidget {
  const BestSelleLightModerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height / 3.6,
        width: Get.width / 2.0,
        margin: const EdgeInsets.only(left: 10,right: 5,top: 15,bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(

          children: [
            const SizedBox(height: 10,),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                  color:  buttonBack.withOpacity(0.5),
                  width: 5,
                ),

              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.cover,
                  ),
                ),

              ),
            ),
            const SizedBox(height: 10,),
            Text("Syntaxive",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: Get.width/22,color: buttonBack
            ),),
            const SizedBox(height: 10,),
            Text("25k ETH",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: Get.width/27,
              color: textColorGray,
            ),),
            const SizedBox(height: 10,),
            Container(
              width: 100,
              alignment: Alignment.center,
              height: 35,
              color: buttonBack,
              child: Text("Follow",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: Get.width/25,color: textColorWhite
              ),),
            )


          ],
        ));
  }
}
