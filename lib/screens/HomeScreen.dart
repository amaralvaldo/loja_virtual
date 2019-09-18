import 'package:flutter/material.dart';
import 'package:loja_virtual/tabs/HomeTab.dart';
import 'package:loja_virtual/tabs/Products_tab.dart';
import 'package:loja_virtual/widgets/CustoM_DRAWER.dart';

class HomeScreen extends StatelessWidget {
final _pageController= PageController();
  @override
  Widget build(BuildContext context) {

    return PageView(
     controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
        ),
        Container(color: Colors.yellowAccent,),
        Container(color: Colors.green,),

      ],
    );
  }

}
