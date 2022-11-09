import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sinca_tab_order/Model/recent_order_model.dart';

class HomeScreenViewModel extends ChangeNotifier {
  bool login = true;
  bool data = true;
  List<RecentOrder> recentOrderData = [];
  HomeScreenViewModel() {
    for (int i = 0; i <= 100; i++) {
      RecentOrder rst = RecentOrder();
      rst.date = "10/12/2022";
      rst.invNo = "323232${i}";
      rst.price = double.parse(Random().nextInt(10).toString());
      rst.time = "11:55";
      recentOrderData.add(rst);
    }
  }
}
