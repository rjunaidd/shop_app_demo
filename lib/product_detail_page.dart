import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final Map<String , Object> product;

  const ProductDetailPage({
    super.key,
  required this.product
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  int selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(widget.product["title"] as String ,
            style: Theme.of(context).textTheme.titleLarge,),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(widget.product["imageUrl"] as String),
          ),
          Spacer(
            flex: 2,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(40)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$${widget.product["price"]}" ,
                style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:(widget.product['sizes'] as List<int>).length ,
                      itemBuilder:(context , index){
                      final size = (widget.product['sizes'] as List<int>)[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              selectedSize = size;
                            });
                          },
                          child: Chip(
                          label : Text(size.toString()),
                            backgroundColor: selectedSize == size ? Theme.of(context).colorScheme.primary : null,
                          ),
                        ),
                      );
                  },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: (){
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Theme.of(context).colorScheme.primary,
                        minimumSize: Size(double.infinity, 50)
                      ),
                      child: Text("Add to Cart", style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                      ),),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
