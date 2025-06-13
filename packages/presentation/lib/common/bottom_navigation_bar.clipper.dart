import 'package:flutter/material.dart';

class BottomNavigationBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    // 시작점
    path.lineTo(0, 0);

    path.cubicTo(
      size.width / 12,
      0,
      size.width / 12,
      2 * size.height / 5,
      2 * size.width / 12,
      2 * size.height / 5,
    );

    path.cubicTo(
      3 * size.width / 12,
      2 * size.height / 5,
      3 * size.width / 12,
      2 * size.height / 5,
      2 * size.width / 12,
      2 * size.height / 5,
    );

    path.cubicTo(
      3 * size.width / 12,
      2 * size.height / 5,
      3 * size.width / 12,
      0,
      4 * size.width / 12,
      0,
    );

    // 나머지 직선 연결
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
