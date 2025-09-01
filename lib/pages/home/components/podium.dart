import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PodiumComponent extends StatelessWidget {
  const PodiumComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 16.w,
        children: [
          _buildPodiumPlace(context, rank: 2, name: 'Teal', points: '201 Pts'),
          _buildPodiumPlace(
            context,
            rank: 1,
            name: 'Purple',
            points: '201 Pts',
          ),
          _buildPodiumPlace(context, rank: 3, name: 'Pinky', points: '201 Pts'),
        ],
      ),
    );
  }

  Widget _buildPodiumPlace(
    BuildContext context, {
    required int rank,
    required String name,
    required String points,
  }) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: rank == 1
                ? 0
                : rank == 2
                ? 24.h
                : 48.h,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: 62.w,
                height: 62.w,
                margin: EdgeInsets.only(bottom: 8.h),
                decoration: BoxDecoration(
                  color: const Color(0xFF4D37A5),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    name.substring(0, 1).toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              if (rank == 1)
                Positioned(
                  bottom: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(122, 90, 248, 1),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(2.w),
                    child: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD700),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.emoji_events,
                        color: Colors.white,
                        size: 14.sp,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: Colors.white,
            ),
            child: Text(
              points,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          8.verticalSpace,
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 12.h),
              decoration: BoxDecoration(
                color: const Color(0xFF4D37A5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r),
                ),
              ),
              child: Text(
                rank.toString(),
                style: Theme.of(
                  context,
                ).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
