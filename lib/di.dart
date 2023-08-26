import 'package:flutter_twod_myanmar/core/localization/appcontroller/appLanguageController.dart';
import 'package:get/get.dart';

import 'controller/giftController.dart';

void configure() {
  Get.put<GiftController>(GiftController());
  //Get.put<AppLanguageController>(AppLanguageController());
}
