import 'package:flutter/material.dart';
import 'package:sinca_tab_order/config/theme.dart';
import 'package:sinca_tab_order/constants/colors.dart';

class ScreenOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarTheme.of(context).backgroundColor,
        leading:  Center(
          child: Text(
            "Orders",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              //  focusNode: focusNode,
              autofocus: false,
              //   cursorHeight: 0.06.sw,

              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 0, bottom: 0),
                  border: InputBorder.none,
                  hintText: 'Search by ID/ Customer Name',
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: ordersSearchIconClr,
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0), borderSide: BorderSide(color: Colors.blue.withOpacity(1), width: 2)),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0), borderSide: BorderSide(color: Colors.blue.withOpacity(1), width: 1))),
            ),
          ),
          Expanded(
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
                    style: noOrdersYetText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
