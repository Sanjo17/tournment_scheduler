import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppNav extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final String? title;
  final double? height;

  const MyAppNav({
    super.key,
    this.title = '',
    this.height = 90,
    this.backgroundColor,
  });

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(
      child: Text(
        title!,
        style: GoogleFonts.abel(
          fontWeight: FontWeight.bold,
          fontSize: 35,
        ),
      ),
    ));
  }
}
