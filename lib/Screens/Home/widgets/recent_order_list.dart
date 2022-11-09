import 'package:flutter/material.dart';
import 'package:sinca_tab_order/Model/recent_order_model.dart';
import 'package:sinca_tab_order/config/theme.dart';
import 'package:sinca_tab_order/constants/colors.dart';

class RecentOrderList extends StatelessWidget {
  RecentOrder data;

  RecentOrderList({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 2,
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 17, right: 7),
            child: Text(
              data.invNo.toString(),
              style: recentOrderListDetailsClr
            ),
          ),
        ),
      ),
      Expanded(
          child: SizedBox(
        width: 10,
      )),
      Expanded(
        flex: 3,
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 7, right: 7),
            child: Text(
              data.date.toString(),
              style: recentOrderListDetailsClr,
              maxLines: 3,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 7, right: 7),
            child: Text(
              data.time.toString(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: recentOrderListDetailsClr
            ),
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 7, right: 7),
            child: Text(
              "26${data.price.toString()}",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: recentOrderListDetailsClr
            ),
          ),
        ),
      ),
    ]);
    
  }
}
