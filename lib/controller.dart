import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mycontroller extends GetxController {
  RxInt num = 2.obs;

  var rnd = Random();

  void plus() {
    num++;
  }

  void minus() {
    if (num > 2) {
      num--;
    }
  }

  void mysnakbar() {
    Get.snackbar(
      "God Responded to You!",
      "The Chosen decision is number < ${rnd.nextInt(num.value + 1)} >.",
      overlayColor: Colors.black45,
      overlayBlur: 5,
      icon: Icon(Icons.wb_sunny_rounded),
      isDismissible: false,
      colorText: Colors.black,
      backgroundColor: Colors.yellowAccent,
    );
  }

  void qsnakbar() {
    int a = rnd.nextInt(2);
    String ans;
    a == 0 ? ans = 'Yes' : ans = 'No';
    Get.snackbar(
      "God Responded to You!",
      "God Answered: $ans",
      overlayColor: Colors.black45,
      overlayBlur: 5,
      icon: Icon(Icons.wb_sunny_rounded),
      isDismissible: false,
      colorText: Colors.black,
      backgroundColor: Colors.yellowAccent,
    );
  }
}
