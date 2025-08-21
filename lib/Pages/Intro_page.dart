import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

import 'package:sushka_place/Components/Button.dart';
import 'package:sushka_place/Theme/Colors.dart'; // for pi

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of red dot images with custom positions and sizes
    final List<Map<String, double>> dots = [
      {'left': -150, 'top': -50, 'width': 300, 'height': 300},
      {'left':300, 'top': 200, 'width': 70, 'height': 70},
     {'left': -30, 'top': 650, 'width': 80, 'height': 80},
      {'left':200 , 'top': 700, 'width': 300, 'height': 300},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ...dots.map((dot) {
            return Positioned(
              left: dot['left'],
              top: dot['top'],
              child: Image.asset(
                'lib/images/dot.png', // your red dot image
                width: dot['width'],
                height: dot['height'],
              ),
            );
          }).toList(),

          // Centered main content
          Center(
            child: Row(

              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Rotated image
                Transform.rotate(
                  angle: -45 * pi / 180, // correct rotation in radians
                  child: Image.asset(
                    'lib/images/intro pic.jpg',
                    width: 200,
                    height: 200,
                      fit: BoxFit.contain,
                  ),
                ),

                // Text Column
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80), // spacing in Column
                    Text(
                      "SUSHKA",
                      style: GoogleFonts.jollyLodger(
                        fontSize: 35,
                        letterSpacing: 8,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Sushi rolled to perfection",
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      "Just For You.",
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        letterSpacing: 3,
                        color: Colors.black,
                      ),
                    ),

                  ],
                ),
                    const SizedBox(width: 20), // spacing in Row
                
              ],

              
            ),
          ),
                      const SizedBox(height: 20), // spacing below the Row
            //button at btm

            Positioned(left: 150,
            top: 600,child: myButton(text: "sign up now",
            onTap:(){
              Navigator.pushNamed(context,'/menupage');
            } , 
            color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
