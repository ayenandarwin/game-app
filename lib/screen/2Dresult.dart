import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twod_myanmar/appStart/navgationbar.dart';
import 'package:flutter_twod_myanmar/controller/giftController.dart';
import 'package:flutter_twod_myanmar/screen/2DDate.dart';
import 'package:flutter_twod_myanmar/screen/home.dart';
import 'package:flutter_twod_myanmar/utils/constants.dart';
import 'package:get/get.dart';

import '../model/giftNumber.dart';

class TwoDResultScreen extends StatefulWidget {
  const TwoDResultScreen({super.key});

  @override
  State<TwoDResultScreen> createState() => _TwoDResultScreenState();
}

class _TwoDResultScreenState extends State<TwoDResultScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    DateTime date = DateTime(2022, 12, 26);

    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        title: Text(
          "2D Results",
          style: TextStyle(
              fontSize: 20,
              // fontWeight: FontWeight.bold,
              color: CustomColor.white),
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          // child: Icon(
          //   Icons.arrow_back,
          //   color: CustomColor.white,
          // ),
        ),
        centerTitle: true,
        backgroundColor: CustomColor.blue,
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
        ),
        actions: [
          InkWell(
            onTap: (() async {
              DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100));

              if (newDate == null) return;

              // setState(() {
              //   print(date);
              // });
              Get.to(TwoDNumberWithDate());
            }),
            child: Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.search,
                color: CustomColor.white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            _buildDate('2023-03-27 Monday'),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                // top: size.height / 3.05,
                left: 12,
              ),
              child: Row(
                children: [
                  _buildTwoDNumber('12:01 PM', '55'),
                  SizedBox(
                    width: 16,
                  ),
                  _buildTwoDNumber('4:30 PM', '78'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 8),
            //   width: MediaQuery.of(context).size.width * 0.925,
            //   height: MediaQuery.of(context).size.height * 0.145,
            //   decoration: BoxDecoration(
            //     color: CustomColor.blue,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     //  crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(left: size.width / 2.5),
            //         child: Row(children: [
            //           Text(
            //             'MODERN',
            //             style: TextStyle(color: CustomColor.white),
            //           ),
            //           SizedBox(
            //             width: 50,
            //           ),
            //           Text('INTERNET',
            //               style: TextStyle(color: CustomColor.white))
            //         ]),
            //       ),
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 12),
            //         child: Divider(
            //           color: CustomColor.white,
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 16, right: 56),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('9:30 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 16)),
            //             Text('14',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //             Text('10',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 16, right: 56),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('2:00 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 16)),
            //             Text('67',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //             Text('30',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            _buildDate('2023-03-27 Monday'),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                // top: size.height / 3.05,
                left: 12,
              ),
              child: Row(
                children: [
                  _buildTwoDNumber('12:01 PM', '92'),
                  SizedBox(
                    width: 16,
                  ),
                  _buildTwoDNumber('4:30 PM', '54'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 8),
            //   width: MediaQuery.of(context).size.width * 0.925,
            //   height: MediaQuery.of(context).size.height * 0.145,
            //   decoration: BoxDecoration(
            //     color: CustomColor.blue,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     //  crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(left: size.width / 2.5),
            //         child: Row(children: [
            //           Text(
            //             'MODERN',
            //             style: TextStyle(color: CustomColor.white),
            //           ),
            //           SizedBox(
            //             width: 50,
            //           ),
            //           Text('INTERNET',
            //               style: TextStyle(color: CustomColor.white))
            //         ]),
            //       ),
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 12),
            //         child: Divider(
            //           color: CustomColor.white,
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 16, right: 56),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('9:30 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 16)),
            //             Text('32',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //             Text('89',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 16, right: 56),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('2:00 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 16)),
            //             Text('64',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //             Text('51',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            _buildDate('2023-03-27 Monday'),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                // top: size.height / 3.05,
                left: 12,
              ),
              child: Row(
                children: [
                  _buildTwoDNumber('12:01 PM', '94'),
                  SizedBox(
                    width: 16,
                  ),
                  _buildTwoDNumber('4:30 PM', '51'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _buildDate('2023-03-27 Monday'),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                // top: size.height / 3.05,
                left: 12,
              ),
              child: Row(
                children: [
                  _buildTwoDNumber('12:01 PM', '94'),
                  SizedBox(
                    width: 16,
                  ),
                  _buildTwoDNumber('4:30 PM', '51'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 8),
            //   width: MediaQuery.of(context).size.width * 0.925,
            //   height: MediaQuery.of(context).size.height * 0.145,
            //   decoration: BoxDecoration(
            //     color: CustomColor.blue,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     //  crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(left: size.width / 2.5),
            //         child: Row(children: [
            //           Text(
            //             'MODERN',
            //             style: TextStyle(color: CustomColor.white),
            //           ),
            //           SizedBox(
            //             width: 50,
            //           ),
            //           Text('INTERNET',
            //               style: TextStyle(color: CustomColor.white))
            //         ]),
            //       ),
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 12),
            //         child: Divider(
            //           color: CustomColor.white,
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 16, right: 56),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('9:30 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 16)),
            //             Text('68',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //             Text('71',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 16, right: 56),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('2:00 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 16)),
            //             Text('52',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //             Text('58',
            //                 style: TextStyle(
            //                     color: CustomColor.yellow, fontSize: 16)),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  _buildTwoDNumber(String text1, text2) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      //  margin: EdgeInsets.only(top: MediaQuery.of(context)),
      //margin: EdgeInsets.only(top:MediaQuery.of(context).size.height / 2.7,
      width: MediaQuery.of(context).size.width * 0.44,
      height: MediaQuery.of(context).size.height * 0.14,
      decoration: BoxDecoration(
          color: CustomColor.blue, borderRadius: BorderRadius.circular(10)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          text1,
          style: TextStyle(fontSize: 16, color: CustomColor.white),
        ),
        Container(
          child: Divider(
            color: CustomColor.white,
          ),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 32, color: CustomColor.white),
        )
      ]),
    );
  }

  _buildDate(String date) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: CustomColor.black, borderRadius: BorderRadius.circular(20)),
        child: Text(
          date,
          style: TextStyle(color: CustomColor.white),
        ),
      ),
    );
  }
}
