import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

// top container height
  static double topContainerHeight = screenHeight / 3.52;

  // product card height

  static double productCardHeight = screenHeight / 3.49;
  static double productParentCardHeight = screenHeight / 3.35;
  static double productImageHeight = screenHeight / 4.92;
  static double productImageWidth = screenHeight / 3.10;

  // dynamic height

  static double height10 = screenHeight / 83.8;

  // dynamic width

  static double width10 = screenHeight / 83.8;
  static double width20 = screenHeight / 41.9;
  static double width30 = screenHeight / 27.9;

  // dynamic font size

  static double fontSize15 = screenHeight / 55.86;
  static double fontSize20 = screenHeight / 41.9;

  // dynamic borderradius

  static double radius15 = screenHeight / 55.86;
  static double radius20 = screenHeight / 41.9;
  static double radius22 = screenHeight / 38.09;

  // dynamic horizontal and vertical padding

  static double horizontal20 = screenHeight / 41.9;
  static double vertical16 = screenHeight / 52.37;
}
