import 'package:flutter/material.dart';
import 'package:shop_app_demo/global_variables.dart';
import 'package:shop_app_demo/home_page.dart';
import 'package:shop_app_demo/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping App",
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(254, 206, 1, 1),
        primary: const Color.fromRGBO(254, 206, 1, 1)
        ),

      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.black
        ),
      ),

      inputDecorationTheme:const InputDecorationTheme(
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),
        prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
      ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
            fontSize: 20,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          )
        ),
        useMaterial3: true
      ),
      // home: HomePage(),
      home: ProductDetailPage(
        product: products[0],
      ),
    );
  }
}
