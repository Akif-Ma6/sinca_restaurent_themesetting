import 'package:flutter/material.dart';
import 'package:sinca_tab_order/Screens/Home/screen_home.dart';
import 'package:sinca_tab_order/Screens/Home/cards/screen_new_order.dart';
import 'package:sinca_tab_order/Screens/login_PopUp/login_options.dart';
import 'package:sinca_tab_order/Screens/order_list/screen_order_list.dart';
import 'package:sinca_tab_order/config/theme.dart';

import 'package:sinca_tab_order/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:lightTheme,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          }),
    );
  }

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = [
    ScreenHome(),
    ScreenOrderList(),
  ];
}

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: NewOrder(),
//     ),
//   );
// }
