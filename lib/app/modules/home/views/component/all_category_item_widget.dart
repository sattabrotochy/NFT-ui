// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllCategoryItemWidget extends StatelessWidget {
  final image;
  final name;
  const AllCategoryItemWidget({Key? key, this.image, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        Container(
          margin: const EdgeInsets.all(5),
          height: Get.height / 5,
          width: Get.width / 2.5,
          child: Image(
            image: NetworkImage(
              "$image",
            ),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          name,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: Get.width / 26,
              color: Theme.of(context).textTheme.bodyText1!.color),
        )
      ]),
    );
  }
}
