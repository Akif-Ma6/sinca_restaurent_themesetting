import 'package:flutter/material.dart';
import 'package:sinca_tab_order/config/theme.dart';

class OrderCard extends StatelessWidget {
  LinearGradient linearGradient;
  String cardLabel;
  IconData cardIcon;
  void Function() ontap;
  OrderCard({required this.linearGradient, required this.cardLabel, required this.cardIcon, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 25,
        height: 110,
        decoration: BoxDecoration(
          gradient: linearGradient,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              cardIcon,
              color: cardIconColor,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                cardLabel,
                style: cardLabelStyle
              ),
            ),
          ],
        ),
      ),
    );
  }
}
