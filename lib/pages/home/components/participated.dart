import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParticipatedComponent extends StatelessWidget {
  const ParticipatedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: const Color(0xFF4D37A5),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.sports_soccer,
                    color: Colors.black,
                    size: 32.sp,
                  ),
                ),
                12.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Le Tropico Sports Club',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(color: Colors.black87),
                      ),
                      Text(
                        'Bandung',
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6B5CE0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '50 Pts',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(8.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Komunitasmu peringkat #456, bagikan yuk!',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.white),
                ),
                Icon(Icons.share, color: Colors.white, size: 18.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
