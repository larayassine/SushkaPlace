import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

import 'package:sushka_place/Components/Button.dart';
import 'package:sushka_place/Theme/Colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text('Sushka', style: TextStyle(color: Colors.grey[900])),
        centerTitle: true,
      ),

      body: Column(
        children: [
          //promo
          Container(
            child: Row(
              //promo msg
              //redeem now btn
              //promo img
              children: [
                Column(
                  children: [
                    Text('Get Your 25% Promo Today!'),
                    myButton(text: "Redeem Now", onTap: () {}, color: secondaryColor,) 
                  ],
                ),
              ],
            ),
          ),

          //search

          // menu items

          //popular
        ],
      ),
    );
  }
}
