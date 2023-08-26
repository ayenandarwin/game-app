import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twod_myanmar/appStart/navgationbar.dart';
import 'package:flutter_twod_myanmar/screen/home.dart';
import 'package:flutter_twod_myanmar/screen/thaiLottery.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';

class ThreeDResultScreen extends StatefulWidget {
  const ThreeDResultScreen({super.key});

  @override
  State<ThreeDResultScreen> createState() => _ThreeDResultScreenState();
}

class _ThreeDResultScreenState extends State<ThreeDResultScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "3D Results",
          style: TextStyle(fontSize: 20, color: CustomColor.white),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildThreeDNumber('Date', '3D', '2023-03-16', '873'),
            _buildThreeDNumber('Date', '3D', '2023-03-01', '652'),
            _buildThreeDNumber('Date', '3D', '2023-02-16', '417'),
            _buildThreeDNumber('Date', '3D', '2023-02-01', '411'),
            _buildThreeDNumber('Date', '3D', '2023-01-17', '519'),
            _buildThreeDNumber('Date', '3D', '2022-12-30', '196'),
            _buildThreeDNumber('Date', '3D', '2022-12-16', '093'),
            _buildThreeDNumber('Date', '3D', '2022-12-01', '805'),
            _buildThreeDNumber('Date', '3D', '2022-11-16', '789'),
          ],
        ),
      ),
    );
  }

  _buildThreeDNumber(String date, threeD, dateNo, threeDNo) {
    return InkWell(
      onTap: (() => Get.to(ThaiLotteryScreen())),
      child: Container(
        margin: EdgeInsets.only(
          top: 8,
          left: 12,
        ),
        padding: EdgeInsets.symmetric(vertical: 8),
        width: MediaQuery.of(context).size.width * 0.93,
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          color: CustomColor.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //margin: EdgeInsets.only(left: size.width / 2.5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      date,
                      style: TextStyle(color: CustomColor.white),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(threeD, style: TextStyle(color: CustomColor.white))
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dateNo,
                      style: TextStyle(color: CustomColor.white, fontSize: 16)),
                  Text(threeDNo,
                      style: TextStyle(color: CustomColor.white, fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
