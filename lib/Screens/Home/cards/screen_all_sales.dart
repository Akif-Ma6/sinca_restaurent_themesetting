import 'package:flutter/material.dart';
import 'package:sinca_tab_order/config/theme.dart';

class AllSales extends StatelessWidget {
  const AllSales({Key? key}) : super(key: key);

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
        title: Text("All Sales",style: Theme.of(context).textTheme.headline1,),
        centerTitle: false,
      ),
      body: Center(child: Text("All Sales Screen")),
    );
  }
}
