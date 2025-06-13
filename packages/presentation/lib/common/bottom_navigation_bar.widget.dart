import 'package:flutter/material.dart';
import 'package:presentation/common/around_custom.painter.dart';
import 'package:presentation/common/bottom_navigation_bar.clipper.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final void Function(int) onTap;

  const BottomNavigationBarWidget({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      child: ClipPath(
        clipper: BottomNavigationBarClipper(),
        child: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: items,
          currentIndex: currentIndex,
          onTap: onTap,
        ),
      ),
    );

    return PhysicalShape(
      elevation: 8,
      color: Colors.transparent,
      clipper: BottomNavigationBarClipper(),
      child: AroundCustomPainter(
        clipper: BottomNavigationBarClipper(),
        borderWidth: 10,
        borderColor: Colors.blue,
        child: Material(
          child: ClipPath(
            clipper: BottomNavigationBarClipper(),
            child: Container(
              height: size.height * 0.09,
              width: size.width,
              padding: const EdgeInsets.only(top: 4),
              child: BottomNavigationBar(
                backgroundColor: Colors.blue,
                items: items,
                currentIndex: currentIndex,
                onTap: onTap,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
