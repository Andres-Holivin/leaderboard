import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyLeaderboard extends StatelessWidget {
  const EmptyLeaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(32.sp),
          decoration: BoxDecoration(
            color: Colors.white30,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.article, size: 92.sp),
        ),
        8.verticalSpace,
        Text(
          "Leaderboard belum tersedia",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "Jadilah yang pertama untuk memulai pertandingan dan raih posisi terbaikmu!",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Mulai Tanding",
            style: TextStyle(color: Color(0xFF6200EE)),
          ),
        ),
      ],
    );
  }
}
