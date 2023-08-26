import 'package:get/get.dart';

import '../model/giftNumber.dart';

class GiftController extends GetxController {
  List<GiftNumber> gifts = [
    GiftNumber(
        name: 'နေ့စဥ်ပတ်သီး\n\tလက်ဆောင်', image: 'assets/icons/dollar.png'),
    GiftNumber(
        name: 'နေ့စဥ်ထူးရှယ်\nမိန်းအောကွက်',
        image: 'assets/icons/money-bag 2.png'),
    GiftNumber(
        name: 'တစ်ပတ်စာမွေး\n\t\t\t\t\t\tပတ်သီး',
        image: 'assets/icons/cash-flow.png'),
    GiftNumber(
        name: 'တစ်ပတ်စာမွေး\n\t\t\t\tရွေးကွက်',
        image: 'assets/icons/money-bag.png'),
    GiftNumber(name: '3D လက်ဆောင်', image: 'assets/icons/gift.png'),
    GiftNumber(
        name: '\t\t\t\tအထူး\nလက်ဆောင်', image: 'assets/icons/crown2.png'),
  ];
}
