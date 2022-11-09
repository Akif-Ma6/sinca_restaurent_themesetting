import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sinca_tab_order/config/theme.dart';
import 'package:sinca_tab_order/constants/colors.dart';
import 'package:sinca_tab_order/main.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: MyApp.selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget? _) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 6),
          child: CustomNavigationBar(
            iconSize: 30.0,
            selectedColor: bottomNavigationSelectionClr,
            strokeColor: bottomNavigationStrokeClr,
            unSelectedColor: bottomNavigationUnselectionClr,
            backgroundColor: bottomNavigationBGclr,
            isFloating: true,
            borderRadius: const Radius.circular(20),
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.home),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.restaurant),
              ),
            ],
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              MyApp.selectedIndexNotifier.value = newIndex;
            },
          ),
        );
      },
    );
  }
}
