import 'package:flutter/material.dart';
import 'package:sinca_tab_order/config/theme.dart';
import 'package:sinca_tab_order/constants/colors.dart';

const space = SizedBox(
  height: 5,
);
Future<void> showLoginPopup(BuildContext context) async {
  showDialog(
      context: context,
      builder: (ctx) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(10),
          children: [
            SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.qr_code,
                ),
                label: const Text(
                  "Scan QR",
                ),
              ),
            ),
            space,
            PopupButtons(
              icon: Icons.touch_app_outlined,
              color: ipPopUpButtonClr,
              buttonName: "Enter IP Manually",
            ),
            space,
            PopupButtons(
              icon: Icons.login_outlined,
              color: loginPopUpButtonClr,
              buttonName: "Login",
            ),
            space,
            PopupButtons(
              icon: Icons.logout_outlined,
              color: logoutPopUpButtonClr,
              buttonName: "Logout",
            ),
            space,
          ],
        );
      });
}

class PopupButtons extends StatelessWidget {
  IconData icon;
  Color color;
  String buttonName;

  PopupButtons({required this.icon, required this.color, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: color),
        label: Text(buttonName, style: TextStyle(color: color)),
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(color: color),
          ),
        ),
      ),
    );
  }
}
