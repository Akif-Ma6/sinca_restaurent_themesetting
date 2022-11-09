import 'package:flutter/material.dart';
import 'package:sinca_tab_order/config/theme.dart';

class UnclosedBills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp,color: appBarElementsColor,),
        ),
        title: Text("Pay Later",style: Theme.of(context).textTheme.headline1),
        centerTitle: false,
      ),
      body: const Center(child: Text("UnclosedBills Screen")),
    );
  }
}
