// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sinca_tab_order/Screens/Home/recent_orders/loading_screen.dart';
import 'package:sinca_tab_order/Screens/Home/recent_orders/no_orders_screen.dart';
import 'package:sinca_tab_order/Screens/Home/recent_orders/recent_orderlist_screen.dart';
import 'package:sinca_tab_order/config/theme.dart';
import 'package:sinca_tab_order/constants/colors.dart';

class RecentOrderCard extends StatelessWidget {
  const RecentOrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _login = true;
    bool _data = true;

    return SizedBox(
      child: Card(
        shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            10),
        elevation: 20,
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 20, left: 20),
            child: Text(
              "Recent Orders",
              style: TextStyle(fontSize: 19, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          Row(children: const [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12, left: 17, right: 7),
                  child: Text(
                    "Inv No",
                    style: TextStyle(fontSize: 17, color: Color.fromRGBO(153, 153, 153, 1), fontWeight: FontWeight.bold),
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
                    "Date",
                    style: TextStyle(fontSize: 17, color: Color.fromRGBO(153, 153, 153, 1), fontWeight: FontWeight.bold),
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
                    "Time",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: recentOrderListDetailsClr,
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
                    "Price",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: recentOrderListDetailsClr,
                  ),
                ),
              ),
            ),
          ]),
          Expanded(
            child: !_login
                ? Shimmer.fromColors(
                    baseColor: shimmerBaseClr,
                    highlightColor: shimmerHighLightClr,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: recentOrderLoadingContainerClr,
                                        ),
                                        margin: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 4),
                                        width: 100,
                                        height: 20,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: recentOrderLoadingContainerClr,
                                        ),
                                        margin: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 4),
                                        width: 100,
                                        height: 20,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: recentOrderLoadingContainerClr,
                                        ),
                                        margin: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 4),
                                        width: 100,
                                        height: 20,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: recentOrderLoadingContainerClr,
                                        ),
                                        margin: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 4),
                                        width: 100,
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }),
                    ),
                  )
                : _data
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Row(children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12, bottom: 12, left: 17, right: 7),
                                    child: Text(
                                      "${index}36$index",
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
                                      "20${index}$index-11-$index",
                                      style:recentOrderListDetailsClr,
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
                                      "${DateTime.now().hour.toString()} : ${DateTime.now().minute.toInt() + index}",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style:recentOrderListDetailsClr
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
                                      " ${87}${index} ",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: recentOrderListDetailsClr
                                    ),
                                  ),
                                ),
                              ),
                            ]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                        ),
                      )
                    : Expanded(
                        child: SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error_outline_sharp,
                                size: 80,
                                color: orderListIconClr,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "No Orders Yet!",
                                style: noOrderClr,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
          ),
        ]),
      ),
    );
  }
}
