import 'package:flutter/material.dart';

class CurvedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const CurvedAppBar({super.key, 
    required this.title,
    this.backgroundColor = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: backgroundColor,
      foregroundColor: (Colors.white),
      elevation: 0,
      shape: RoundedAppBarShape(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120.0);
}

class RoundedAppBarShape extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(0, rect.height) // Start at the bottom left corner
      ..quadraticBezierTo(rect.width / 2, rect.height - 40, rect.width,
          rect.height) // Curve up from the center
      ..lineTo(rect.width, 0) // Line to top-right
      ..lineTo(0, 0) // Line to top-left
      ..close(); // Close the path
  }
}
