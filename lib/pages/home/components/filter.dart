import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterComponent extends StatelessWidget {
  const FilterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        childAspectRatio: 2.8,
        shrinkWrap: true,
        children: [
          _buildDropdownButton('Mini Soccer'),
          _buildDropdownButton('Tunggal'),
          _buildDropdownButton('Bandung'),
        ],
      ),
    );
  }

  Widget _buildDropdownButton(String text) {
    return TextButton(
      onPressed: () {},

      child: Row(
        children: [
          Text(text, style: TextStyle()),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
