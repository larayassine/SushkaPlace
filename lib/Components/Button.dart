import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color color;
  const myButton({super.key, required this.text, this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 10,
                letterSpacing: 3,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10), // spacing between text and icon
            Icon(Icons.arrow_forward, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
