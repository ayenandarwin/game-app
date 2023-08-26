import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';

class DailyChoice extends StatefulWidget {
  const DailyChoice({super.key});

  @override
  State<DailyChoice> createState() => _DailyChoiceState();
}

class _DailyChoiceState extends State<DailyChoice> {
  @override
  Widget build(BuildContext context) {
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
        backgroundColor: CustomColor.blue,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
        actions: [
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
                color: Colors.yellow,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 8,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.height * 0.047,
              padding: EdgeInsets.symmetric(
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                  color: CustomColor.purple,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  'နေ့စဥ်ပတ်သီးလက်ဆောင်',
                  style: TextStyle(
                      color: CustomColor.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '2D Live Myanmar',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                //letterSpacing: 1,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 7.0,
                      color: Colors.black),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'နေ့တိုက်ပတ်သီး',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                letterSpacing: 1,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(1, 1),
                      // blurRadius: 3.0,
                      color: Colors.grey),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.077,
            padding: EdgeInsets.symmetric(
              horizontal: 3,
            ),
            decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(7)),
            child: Center(
              child: Text(
                'ဗုဒ္ဓဟူးနေ့(မနက်)',
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(children: [
              _buildLongCard('လုံးပိုင်'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildShortCard('6'),
                    _buildShortCard('4'),
                  ],
                ),
              ),
              _buildLongCard('စိတ်ကြိုက်'),
              _buildShortCard('4'),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Estimate Thai Stock Data',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 5.0,
                      color: Colors.black),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
          )
        ]),
      ),
    );
  }

  _buildLongCard(String text) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 3,
      ),
      child: Card(
        elevation: 3,
        color: Colors.grey[600],
        child: Container(
          decoration: BoxDecoration(),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.yellowAccent,
                  //fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  _buildShortCard(String text) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 3,
      ),
      child: Card(
        elevation: 3,
        color: Colors.grey[600],
        child: Container(
          decoration: BoxDecoration(),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
