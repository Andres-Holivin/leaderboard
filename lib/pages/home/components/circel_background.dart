import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircelBackground extends StatelessWidget {
  const CircelBackground({super.key});

  @override
  Widget build(BuildContext context) {
    var width = 1.sw * 1.6;
    var height = 1.sh * 1.8;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              left: (constraints.maxWidth - width) / 2,
              top: (constraints.maxHeight - height) / 2,
              child: _buildCircle(
                width: width,
                height: height,
                child: _buildCircle(
                  width: width,
                  height: height,
                  child: _buildCircle(width: width, height: height),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildCircle({
    required double width,
    required double height,
    Widget? child,
  }) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(80.sp),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white38, width: 0.2),
      ),
      child: child,
    );
  }
}
