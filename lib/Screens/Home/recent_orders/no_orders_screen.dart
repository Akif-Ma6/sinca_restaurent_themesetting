import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sinca_tab_order/config/theme.dart';
import 'package:sinca_tab_order/constants/colors.dart';

class NoOrdersScreen extends StatelessWidget {
  const NoOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
