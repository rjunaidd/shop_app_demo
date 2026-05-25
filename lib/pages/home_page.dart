import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_demo/pages/cart_page.dart';
import 'package:shop_app_demo/widgets/product_list.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int selectedPage = 0;

  List<Widget> page = [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:page[selectedPage],
        bottomNavigationBar:BottomNavigationBar(

            currentIndex: selectedPage,

            onTap: (index){
              setState(() {
                selectedPage = index;
              });
            },
            items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"
    ),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
    label: "Shopping Cart"
    ),
    ]
      ),

    );
  }
}
