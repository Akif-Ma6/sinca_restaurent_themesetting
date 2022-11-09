// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sinca_tab_order/Screens/Home/cards/screen_all_sales.dart';
import 'package:sinca_tab_order/Screens/Home/cards/screen_new_order.dart';
import 'package:sinca_tab_order/Screens/Home/cards/screen_tables.dart';
import 'package:sinca_tab_order/Screens/Home/cards/screen_unclosed_bills.dart';
import 'package:sinca_tab_order/Screens/Home/widgets/order_card_widget.dart';
import 'package:sinca_tab_order/Screens/Home/view_model/home_screen_VM.dart';
import 'package:sinca_tab_order/Screens/Home/widgets/recent_order_list.dart';
import 'package:sinca_tab_order/Screens/login_PopUp/login_options.dart';
import 'package:sinca_tab_order/config/theme.dart';
import 'package:sinca_tab_order/constants/colors.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var agentID = "agent name";

    String appVersion = "v 1.0.0";
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeScreenViewModel())
          //  Provider<HomeScreenViewModel>(create: (_) => HomeScreenViewModel()),
        ],
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppBarColor,
            leading: Center(
              child: Text(
                "Home",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            actions: [
              const SizedBox(
                width: 20,
              ),
              IconButton(
                onPressed: () {
                  showLoginPopup(context);
                },
                icon: const Icon(
                  Icons.settings,
                  color: appBarElementsColor,
                ),
              ),
            ],
          ),
          body: Consumer<HomeScreenViewModel>(
              builder: (context, foo, child) => SafeArea(
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          child: Card(
                            elevation: 15,
                            shape: ShapeBorder.lerp(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Agent : $agentID",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(appVersion,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    OrderCard(
                                        ontap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  NewOrder()),
                                            ),
                                          );
                                        },
                                        linearGradient: newOrderCardClr,
                                        cardLabel: "New Order",
                                        cardIcon: Icons.restaurant),
                                    OrderCard(
                                        ontap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  AllSales()),
                                            ),
                                          );
                                        },
                                        linearGradient: allSalesCardClr,
                                        cardLabel: "All Sales",
                                        cardIcon:
                                            Icons.restaurant_menu_outlined)
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    OrderCard(
                                        ontap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  UnclosedBills()),
                                            ),
                                          );
                                        },
                                        linearGradient: unclosedBillsCardClr,
                                        cardLabel: "Unclosed Bills",
                                        cardIcon: Icons.attach_money_outlined),
                                    OrderCard(
                                        ontap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: ((context) => Tables()),
                                            ),
                                          );
                                        },
                                        linearGradient: tablesCardClr,
                                        cardLabel: "Tables",
                                        cardIcon: Icons.table_bar)
                                  ],
                                ),
                                // const SizedBox(
                                //   height: 3,
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: SizedBox(
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
                                padding: EdgeInsets.only(
                                    top: 10, right: 20, left: 20),
                                child: Text(
                                  "Recent Orders",
                                  style: recentOrderHead,
                                ),
                              ),
                              Row(children: const [
                                Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 12,
                                          bottom: 12,
                                          left: 17,
                                          right: 7),
                                      child: Text(
                                        "Inv No",
                                        style: recentOrderListHeads,
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
                                      padding: EdgeInsets.only(
                                          top: 12,
                                          bottom: 12,
                                          left: 7,
                                          right: 7),
                                      child: Text(
                                        "Date",
                                        style: recentOrderListHeads,
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
                                      padding: EdgeInsets.only(
                                          top: 12,
                                          bottom: 12,
                                          left: 7,
                                          right: 7),
                                      child: Text(
                                        "Time",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: recentOrderListHeads,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 12,
                                          bottom: 12,
                                          left: 7,
                                          right: 7),
                                      child: Text(
                                        "Price",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: recentOrderListHeads,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              Expanded(
                                child: !foo.login
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                color:
                                                                    recentOrderLoadingContainerClr),
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10,
                                                                    bottom: 5,
                                                                    left: 5,
                                                                    right: 4),
                                                            width: 100,
                                                            height: 20,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              color:
                                                                  recentOrderLoadingContainerClr,
                                                            ),
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10,
                                                                    bottom: 5,
                                                                    left: 5,
                                                                    right: 4),
                                                            width: 100,
                                                            height: 20,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              color:
                                                                  recentOrderLoadingContainerClr,
                                                            ),
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10,
                                                                    bottom: 5,
                                                                    left: 5,
                                                                    right: 4),
                                                            width: 100,
                                                            height: 20,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              color:
                                                                  recentOrderLoadingContainerClr,
                                                            ),
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10,
                                                                    bottom: 5,
                                                                    left: 5,
                                                                    right: 4),
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
                                    : foo.data
                                        ? Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ListView.separated(
                                              shrinkWrap: true,
                                              itemCount:
                                                  foo.recentOrderData.length,
                                              itemBuilder: (context, index) {
                                                return RecentOrderList(
                                                  data: foo
                                                      .recentOrderData[index],
                                                );
                                              },
                                              separatorBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Divider();
                                              },
                                            ),
                                          )
                                        : Expanded(
                                            child: SizedBox(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
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
                        ))
                      ],
                    ),
                  )),
        ));
  }
}
