import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twod_myanmar/screen/3Dresult.dart';
import 'package:flutter_twod_myanmar/utils/constants.dart';
import 'package:get/get.dart';

class ThaiLotteryScreen extends StatefulWidget {
  const ThaiLotteryScreen({super.key});

  @override
  State<ThaiLotteryScreen> createState() => _ThaiLotteryScreenState();
}

class _ThaiLotteryScreenState extends State<ThaiLotteryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.blue,
        centerTitle: true,
        title: Text(
          "Thai Lottery",
          style: TextStyle(fontSize: 20, color: CustomColor.white),
        ),
        leading: InkWell(
          onTap: () => Get.to(ThreeDResultScreen()),
          child: Icon(
            Icons.arrow_back,
            color: CustomColor.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 16,
              ),
              // Center(
              //   child: RichText(
              //       text: TextSpan(children: [
              //     TextSpan(
              //         text: '1st Prize\n',
              //         style: TextStyle(color: Colors.black, fontFamily: 'Poppins')),
              //     TextSpan(
              //         text: '6,000,000\n',
              //         style: TextStyle(color: Colors.black, fontFamily: 'Poppins')),
              //     TextSpan(
              //         text: '981417\n',
              //         style: TextStyle(
              //             fontSize: 30,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black,
              //             fontFamily: 'Poppins')),
              //     TextSpan(
              //         text: '1 April 1823\n',
              //         style: TextStyle(
              //             // fontSize: 18,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black,
              //             fontFamily: 'Poppins'))
              //   ])),
              // ),
              Text('1st Prize'),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/baht2.png',
                      scale: 25,
                      // width: 20,
                      // height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    //Icon(Icons.money),
                    Text('6,000,000'),
                  ],
                ),
              ),
              Text(
                '981417',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text('1 April 1823'),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: MediaQuery.of(context).size.width * 0.47,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(children: [
                      Text('Near 1st Prize'),
                      Text(
                        '981416',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/baht2.png',
                              scale: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),

                            // Icon(Icons.money),
                            Text('1000,000'),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: MediaQuery.of(context).size.width * 0.47,
                    // height: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(children: [
                      Text('Near 1st Prize'),
                      Text(
                        '981418',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/baht2.png',
                              scale: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),

                            //Icon(Icons.money),
                            Text('1000,000'),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSmallCard('Last 2\nDigits', '61', '1800'),
                  _buildSmallCard('First 3\nDigits', '287 242', '4000'),
                  _buildSmallCard('Last 3\nDigits', '002 542', '4000'),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              _build2ndPrize('2nd Prize', '180,000', '953174', '196793',
                  '587134', '181415', '592830'),
              SizedBox(
                height: 8,
              ),
              _build3rdPrize(
                '3rd Prize',
                '80,000',
                '953174',
                '196793',
                '587134',
                '181415',
                '592830',
                '953174',
                '196793',
                '953174',
                '196793',
                '953174',
              ),
            ]),
      ),
    );
  }

  _buildSmallCard(String t1, t2, t3) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      width: MediaQuery.of(context).size.width * 0.3,
      // height: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(18)),
      child: Column(children: [
        Align(alignment: Alignment.topLeft, child: Text(t1)),
        Text(
          t2,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/baht2.png',
                scale: 25,
              ),
              SizedBox(
                width: 5,
              ),

              // Icon(Icons.money),
              Text(t3),
            ],
          ),
        ),
      ]),
    );
  }

  _build2ndPrize(String t1, t2, t3, t4, t5, t6, t7) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width * 0.95,
      // height: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(18)),

      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(t1),
            SizedBox(
              width: 8,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/baht2.png',
                    scale: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  // Icon(Icons.money),
                  Text(t2),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              t3,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              t4,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              t5,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 105),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                t6,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                t7,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  _build3rdPrize(String t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width * 0.95,
      // height: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(18)),

      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(t1),
            SizedBox(
              width: 8,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/baht2.png',
                    scale: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),

                  //Icon(Icons.money),
                  Text(t2),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              t3,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              t4,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              t5,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                t6,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                t7,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                t8,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                t9,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                t10,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                t11,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 225),
          child: Text(
            t12,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
