import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twod_myanmar/appStart/navgationbar.dart';
import 'package:flutter_twod_myanmar/screen/giftNumber/dailyChoice.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../controller/giftController.dart';
import '../core/localization/appcontroller/appLanguageController.dart';
import '../model/giftNumber.dart';
import '../utils/constants.dart';
import '../utils/global.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GiftNumberScreen extends StatefulWidget {
  const GiftNumberScreen({super.key});

  @override
  State<GiftNumberScreen> createState() => _GiftNumberScreenState();
}

class _GiftNumberScreenState extends State<GiftNumberScreen> {
  @override
  Widget build(BuildContext context) {
    var gifts = Get.find<GiftController>().gifts;
    var size = MediaQuery.of(context).size;
    String? languageChoice;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //AppLocalizations.of(context)!.tips,
          'လက်ဆောင်ဂဏန်း'.tr,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: CustomColor.white),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Get.back(),
          // child: Icon(
          //   Icons.arrow_back,
          //   color: CustomColor.white,
          // ),
        ),
        backgroundColor: CustomColor.blue,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
        actions: [
          // InkWell(
          //   child: Container(
          //     margin: EdgeInsets.only(right: 16),
          //     child: Icon(
          //       Icons.language,
          //       color: Colors.blue[300],
          //     ),
          //   ),
          // ),
          // InkWell(onTap: () {
          //   GetBuilder<AppLanguageController>(
          //     init: AppLanguageController(),
          //     builder: (controller) {
          //       languageChoice = controller.appLocale;
          //       return InkWell(
          //         onTap: () {
          //           // showDialog(
          //           //   context: context,
          //           //   builder: (context) {
          //           //     return StatefulBuilder(builder:
          //           //         (BuildContext context, StateSetter setState) {
          //           //       return AlertDialog(
          //           //         contentPadding: EdgeInsets.zero,
          //           //         //  backgroundColor: Colors.transparent,
          //           //         titleTextStyle: const TextStyle(
          //           //             fontSize: 20, color: Colors.black),
          //           //         content: Container(
          //           //           width: MediaQuery.of(context).size.width,
          //           //           height: MediaQuery.of(context).size.height * 0.3,
          //           //           padding: const EdgeInsets.symmetric(
          //           //               horizontal: 10, vertical: 20),
          //           //           child: Column(
          //           //             mainAxisAlignment:
          //           //                 MainAxisAlignment.spaceAround,
          //           //             children: [
          //           //               Padding(
          //           //                 padding: const EdgeInsets.only(
          //           //                     left: 15, right: 15),
          //           //                 child: Text(
          //           //                   "Please Choice Language".tr,
          //           //                   style: const TextStyle(fontSize: 18),
          //           //                 ),
          //           //               ),
          //           //               RadioListTile(
          //           //                 value: 'my_MM',
          //           //                 title: const Text("မြန်မာ"),
          //           //                 groupValue: languageChoice,
          //           //                 onChanged: (val) {
          //           //                   setState(() {
          //           //                     languageChoice = 'my_MM';
          //           //                   });
          //           //                 },
          //           //               ),
          //           //               RadioListTile(
          //           //                 value: 'en_US',
          //           //                 title: const Text("English"),
          //           //                 groupValue: languageChoice,
          //           //                 onChanged: (val) {
          //           //                   setState(() {
          //           //                     languageChoice = 'en_US';
          //           //                   });
          //           //                 },
          //           //               ),
          //           //               Row(
          //           //                 mainAxisAlignment:
          //           //                     MainAxisAlignment.spaceAround,
          //           //                 children: [
          //           //                   ElevatedButton(
          //           //                     style: ElevatedButton.styleFrom(
          //           //                         padding: const EdgeInsets.symmetric(
          //           //                             horizontal: 25.0)),
          //           //                     onPressed: () {
          //           //                       Get.back();
          //           //                     },
          //           //                     child: const Text("Cancel"),
          //           //                   ),
          //           //                   ElevatedButton(
          //           //                     style: ElevatedButton.styleFrom(
          //           //                         padding: const EdgeInsets.symmetric(
          //           //                             horizontal: 40.0)),
          //           //                     onPressed: () {
          //           //                       setState() {}
          //           //                       controller
          //           //                           .changeLanguage(languageChoice!);
          //           //                       Get.updateLocale(
          //           //                           Locale(languageChoice!));
          //           //                       Global.language = languageChoice;
          //           //                       Get.back();
          //           //                     },
          //           //                     child: const Text("Apply"),
          //           //                   ),
          //           //                 ],
          //           //               )
          //           //             ],
          //           //           ),
          //           //         ),
          //           //       );
          //           //     });
          //           //   },
          //           // );
          //           setState() {}
          //           controller.changeLanguage(languageChoice!);
          //           Get.updateLocale(Locale(languageChoice!));
          //           Global.language = languageChoice;
          //           Get.back();
          //         },
          //         child: Container(
          //           //  margin: EdgeInsets.only(right: 16),
          //           child: Icon(
          //             Icons.language,
          //             color: Colors.blue[300],
          //           ),
          //         ),
          //       );
          //     },
          //   );
          // }),
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
              child: Icon(Icons.error, color: Colors.white),
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
          // SizedBox(
          //   height: 10,
          // ),
          Expanded(
              child: InkWell(
            //onTap: () => Get.to(DailyChoice()),
            child: GridView.builder(
                itemCount: gifts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    crossAxisCount: 2),
                itemBuilder: ((context, index) =>
                    _buildGiftCard(gifts[index]))),
          )),
        ]),
      ),
    );
  }

  _buildGiftCard(GiftNumber giftNumber) {
    return InkWell(
      onTap: () {
        Get.to(() => DailyChoice());
      },
      child: Container(
        // width: MediaQuery.of(context).size.height * 0.3,
        // height: MediaQuery.of(context).size.height * 0.3,
        child: Card(
          elevation: 5,
          // shadowColor: Colors.black,
          child: Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(children: [
              Image.asset(
                giftNumber.image,
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
                giftNumber.name.tr,
                style: TextStyle(
                    color: CustomColor.black, fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
