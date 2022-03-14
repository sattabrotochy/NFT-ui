// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invert_colors/invert_colors.dart';
import '../../../../constant.dart';
import '../controllers/home_controller.dart';
import 'component/BestSellerDarkModeWidget.dart';
import 'component/all_category_item_widget.dart';
import 'component/best_seller_lightMode_widget.dart';
import 'component/live_biding_widget.dart';
import 'component/top_collection_widget.dart';
import 'component/trending_category_widget.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "Discover, Collect, \nand Sell Your NFTs",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: Get.width / 13,
                  color: Theme.of(context).textTheme.bodyText1!.color),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            height: Get.height / 20,
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: backGroundColor2,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: borderColor)),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Theme.of(context).textTheme.bodyText1!.color,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Search Category",
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        //  control.toggleObscure();
                      },
                      child: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ))),
            ),
          ),

          /// category item ui widget here
          Container(
            height: Get.height / 3.4,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: controller.allCategoryModelList.length,
              itemBuilder: (context, int index) {
                return AllCategoryItemWidget(
                  image: "${controller.allCategoryModelList[index].image}",
                  name: "${controller.allCategoryModelList[index].name}",
                );
              },
            ),
          ),

          ///live binding widget here
          const LiveBidingWidget(),

          /// Trending Category Widget here
          const TrendingCategoryWidget(),

          ///best seller widget here
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            child: Text(
              "Best Seller",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: Get.width / 20,
                  color: Theme.of(context).textTheme.bodyText2!.color),
            ),
          ),

          ///best seller widget here
          Container(
            height: Get.height / 3.4,
            // color: Theme.of(context).textTheme.bodyText1!.color ==
            //     kContentColorDarkTheme
            //     ? Colors.black
            //     : Colors.white,
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, int index) {
                  return Theme.of(context).textTheme.bodyText1!.color == kContentColorDarkTheme
                      ? const BestSellerDartModeWidget()
                      : const BestSelleLightModerWidget();
                }),
          ),

          ///Top Collection widget here
          ///
          TopCollectionWidget()
        ],
      ),
    )));
  }
}
