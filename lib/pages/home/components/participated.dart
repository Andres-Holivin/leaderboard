import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/model/participated_model.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_bloc.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';

class ParticipatedComponent extends StatelessWidget {
  const ParticipatedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardBloc, LeaderboardState>(
      builder: (context, state) {
        var selectedParticipated = state.filter.participated;
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
                      width: 42.w,
                      height: 42.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4D37A5),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          selectedParticipated?.name
                                  .substring(0, 1)
                                  .toUpperCase() ??
                              "",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    12.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedParticipated?.name ?? "",
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(color: Colors.black87),
                          ),
                          Text(
                            selectedParticipated?.username ?? "",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF6B5CE0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '${selectedParticipated?.point.toString()} Pts',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    state.participated.length > 1
                        ? IconButton(
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            style: IconButton.styleFrom(
                              backgroundColor: const Color(0xFF6B5CE0),
                            ),
                            onPressed: () {
                              var ctx = context.read<LeaderboardBloc>();
                              showModalBottomSheet(
                                context: context,
                                useSafeArea: true,
                                useRootNavigator: true,
                                isScrollControlled: true,
                                builder: (context) {
                                  return _buildParticipateSheet(ctx);
                                },
                              );
                            },
                            icon: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.white,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${selectedParticipated?.name.split(" ")[0]} ada di peringkat #${selectedParticipated?.rank.toString()}, bagikan yuk!',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(Icons.share, color: Colors.white, size: 18.sp),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildParticipateSheet(LeaderboardBloc ctx) {
    return Padding(
      padding: EdgeInsets.all(12.sp),
      child: BlocProvider.value(
        value: ctx,
        child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
          builder: (context, state) {
            final grouped = groupBy(
              state.participated,
              (ParticipatedModel p) => p.category.name,
            );
            var selectedParticipated = state.filter.participated;
            return StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          state.filter.sportType?.name ?? "",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.close, color: Colors.black),
                        ),
                      ],
                    ),

                    RadioGroup<ParticipatedModel>(
                      groupValue: selectedParticipated,
                      onChanged: (ParticipatedModel? value) {
                        print(value);
                        setState(() {
                          selectedParticipated = value;
                        });
                      },
                      child: Column(
                        children: grouped.entries
                            .map(
                              (entry) => _buildListParticipated(
                                entry.key,
                                entry.value,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed:
                            selectedParticipated == null ||
                                selectedParticipated ==
                                    state.filter.participated
                            ? null
                            : () {
                                context.read<LeaderboardBloc>().add(
                                  LeaderboardEvent.updateFilter(
                                    filter: state.filter.copyWith(
                                      participated: selectedParticipated,
                                    ),
                                  ),
                                );
                                Navigator.pop(context);
                              },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF7A5AF8),
                          disabledBackgroundColor: Colors.black12,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Terapkan',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildListParticipated(
    String title,
    List<ParticipatedModel> participatedList,
  ) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 8.sp),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: participatedList.length,
          itemBuilder: (context, index) {
            var participated = participatedList[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xFF4D37A5),
                child: Text(
                  participated.name.substring(0, 1).toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                '${participated.name} ${participated.partner != null ? " / ${participated.partner}" : ""}',
              ),
              subtitle: Text(participated.username),
              trailing: Radio(value: participated, activeColor: Colors.blue),
            );
          },
        ),
      ],
    );
  }
}
