import 'package:get/get.dart';
import 'package:nft_ui/app/modules/home/all_category_model.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  List<AllCategoryModel> allCategoryModelList = <AllCategoryModel>[];

  @override
  void onInit() {
    super.onInit();

    allCategoryModelList = getCategory();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  List<AllCategoryModel> getCategory() {
    List<AllCategoryModel> list = [
      AllCategoryModel(1, "Art",
          "https://images.unsplash.com/photo-1513364776144-60967b0f800f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
      AllCategoryModel(2, "Soprts",
          "https://media.istockphoto.com/photos/live-cricket-on-mobile-picture-id696350444?b=1&k=20&m=696350444&s=170667a&w=0&h=3W5BtnK58sJpXdePHeTCRzjQC11s2wiOTCAXyx_Z0xk="),
      AllCategoryModel(3, "Music",
          "https://media.istockphoto.com/photos/music-keeps-her-productive-picture-id1283960843?b=1&k=20&m=1283960843&s=170667a&w=0&h=HNEY4weaZw4t72FlXjhlfeXgBUwnNaagKMv7tyBeil4="),
      AllCategoryModel(4, "Video Game",
          "https://media.istockphoto.com/photos/gamer-room-picture-id1334503591?b=1&k=20&m=1334503591&s=170667a&w=0&h=ma4969dCciSQbscjVCBmNdIG5Umon2VWwe-ZA3GZ55U="),
      AllCategoryModel(5, "Trading Cards",
          "https://images.unsplash.com/photo-1613771404784-3a5686aa2be3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHJhZGluZyUyMGNhcmRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
      AllCategoryModel(6, "Memes",
          "https://media.istockphoto.com/photos/silly-cat-picture-id1314888871?b=1&k=20&m=1314888871&s=170667a&w=0&h=l5Eh0bIglKaZ28BkqVbnNaAO6UZrAusDG_U5TSVERJs="),
      AllCategoryModel(7, "Domain Names ",
          "https://images.unsplash.com/photo-1586281380426-f644f2dc6ada?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9tYWluJTIwbmFtZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
      AllCategoryModel(8, "Virtual Fashion",
          "https://media.istockphoto.com/photos/young-woman-using-virtual-reality-headset-at-home-sitting-on-a-couch-picture-id1338846209?b=1&k=20&m=1338846209&s=170667a&w=0&h=Y0X0VCDQjpZjFqPlUEXEE94d7bcPMMlUFFmmK107V1Q="),
    ];
    update();
    return list;
  }
}
