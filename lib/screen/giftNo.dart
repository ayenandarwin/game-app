import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twod_myanmar/screen/giftNumber/dailyChoice.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../controller/giftController.dart';
import '../core/localization/appcontroller/appLanguageController.dart';
import '../model/giftNumber.dart';
import '../utils/constants.dart';
import '../utils/global.dart';

class GiftNumberPage extends StatefulWidget {
  const GiftNumberPage({super.key});

  @override
  State<GiftNumberPage> createState() => _GiftNumberPageState();
}

class _GiftNumberPageState extends State<GiftNumberPage> {
  @override
  Widget build(BuildContext context) {
    var gifts = Get.find<GiftController>().gifts;
    var size = MediaQuery.of(context).size;
    String? languageChoice;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "လက်ဆောင်ဂဏန်း".tr,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: CustomColor.white),
        ),
        // centerTitle: true,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back,
            color: CustomColor.white,
          ),
        ),
        backgroundColor: CustomColor.black,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
        actions: [
          // InkWell(onTap: () {
          GetBuilder<AppLanguageController>(
            init: AppLanguageController(),
            builder: (controller) {
              languageChoice = controller.appLocale;
              return InkWell(
                onTap: () {
                  setState() {}
                  controller.changeLanguage(languageChoice!);
                  Get.updateLocale(Locale(languageChoice!));
                  Global.language = languageChoice;
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.language,
                    color: Colors.blue[300],
                  ),
                ),
              );
            },
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: AlertDialog(
                        backgroundColor: Colors.grey.shade800,
                        title: Text(
                          'Confirmation',
                          style: TextStyle(color: CustomColor.white),
                        ),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(left: 130)),
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: 'Thanks for letting us know.',
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 2,
                                  backgroundColor: Colors.red,
                                  fontSize: 16);
                              Get.back();
                            },
                            child: const Text(
                              "OK",
                              style: TextStyle(color: Colors.pink),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(left: 30)),
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: CustomColor.white),
                            ),
                          ),
                        ],
                        contentPadding: EdgeInsets.all(25),
                        titleTextStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        content: Text(
                          'Do you want to report the Content?',
                          style: TextStyle(color: CustomColor.white),
                        ),
                      ),
                    );
                  });
                },
              );
            },
            child: Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.error,
                color: Colors.blue[300],
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(children: [
          SizedBox(
            height: 5,
          ),
          Text(
            'လက်ဆောင်ဂဏန်း'.tr,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              _buildGiftCard(
                  'နေ့စဥ်ပတ်သီး\nလက်ဆောင်', 'assets/icons/dollar.png'),
              _buildGiftCard('နေ့စဥ်ထူးရှယ်\nမိန်းအောကွက်',
                  'assets/icons/money-bag 2.png'),
              _buildGiftCard('တစ်ပတ်စာမွေး\n\t\t\t\t\t\tပတ်သီး',
                  'assets/icons/cash-flow.png'),
            ],
          )
        ]),
      ),
    );
  }

  _buildGiftCard(String image, name) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.3,
      child: Card(
        elevation: 5,
        // shadowColor: Colors.black,
        child: Container(
          padding: EdgeInsets.only(top: 15),
          child: Column(children: [
            Image.asset(
              image,
              scale: 13,
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: CustomColor.black,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              // '3D',
              name,
              style: TextStyle(
                  color: CustomColor.black, fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),
    );
  }
}
