import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  Text("Shoe\nCollection" ,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        fontSize: 20
                    ),
                  ),
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(),
                          prefixIcon: Icon(Icons.search)
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
    ),
    );
  }
}
