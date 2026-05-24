import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String , Object> product;

  const ProductDetailPage({
    super.key,
  required this.product
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(product["title"] as String ,
            style: Theme.of(context).textTheme.titleLarge,),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(product["imageUrl"] as String),
          ),
          Spacer(
            flex: 2,
          ),
          Container(
            decoration: BoxDecoration(
              
            ),
          )
        ],
      ),
    );
  }
}
