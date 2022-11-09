import 'package:flutter/material.dart';
import 'package:sinca_tab_order/config/theme.dart';

class Tables extends StatelessWidget {
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
        title: Text(" Tables ",style: Theme.of(context).textTheme.headline1),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(child: Text("Tables  Screen")),
    );
  }
}
