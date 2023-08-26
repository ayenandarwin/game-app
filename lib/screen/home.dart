import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_twod_myanmar/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //     centerTitle: true,
        //     backgroundColor: CustomColor.blue,
        //     title: Text(
        //       '2D Myanmar',
        //       style: TextStyle(fontSize: 22, color: CustomColor.white),
        //     )),
        // backgroundColor: CustomColor.black,
        backgroundColor: CustomColor.blue,
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: size.height / 3 * 2,
                  child: Text(
                    '2D Myanmar',
                    style: TextStyle(fontSize: 22, color: CustomColor.white),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: size.height / 2.7),
              height: size.height / 3 * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        20,
                      ),
                      topRight: Radius.circular(20))),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 75,
                left: 12,
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.05,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: CustomColor.purple,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: CustomColor.white,
                          ),
                          Text(
                            '26-03-2023',
                            style: TextStyle(color: CustomColor.white),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: MediaQuery.of(context).size.height * 0.05,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: CustomColor.purple,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.done_outlined,
                            color: CustomColor.white,
                          ),
                          Text(
                            '8:59:22',
                            style: TextStyle(color: CustomColor.white),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 110,
                left: size.width / 2.7,
              ),
              child: Text(
                '54',
                style: TextStyle(color: CustomColor.white, fontSize: 90),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: size.height / 3.3,
                //left: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildAmount('SET', '1,591.85'),
                  _buildAmount('VALUE', '44,924.85'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: size.height / 2.55,
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
            // Container(
            //   margin: EdgeInsets.only(
            //     top: size.height / 2.05,
            //     left: 12,
            //   ),
            //   padding: EdgeInsets.symmetric(vertical: 8),
            //   width: MediaQuery.of(context).size.width * 0.925,
            //   height: MediaQuery.of(context).size.height * 0.145,
            //   decoration: BoxDecoration(
            //     color: CustomColor.black,
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
            //         padding: EdgeInsets.only(left: 16, right: 54),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('9:30 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 20)),
            //             Text('32',
            //                 style: TextStyle(
            //                     color: CustomColor.red, fontSize: 20)),
            //             Text('89',
            //                 style: TextStyle(
            //                     color: CustomColor.red, fontSize: 20)),
            //           ],
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.only(left: 16, right: 54),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text('2:00 AM',
            //                 style: TextStyle(
            //                     color: CustomColor.white, fontSize: 20)),
            //             Text('64',
            //                 style: TextStyle(
            //                     color: CustomColor.red, fontSize: 20)),
            //             Text('51',
            //                 style: TextStyle(
            //                     color: CustomColor.red, fontSize: 20)),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  _buildAmount(String money, amount) {
    return Column(
      children: [
        Text(
          money,
          style: TextStyle(color: CustomColor.white),
        ),
        Text(
          amount,
          style:
              TextStyle(color: CustomColor.white, fontWeight: FontWeight.w500),
        )
      ],
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
}
