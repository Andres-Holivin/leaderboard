import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/model/periode_model.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_bloc.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';

AppBar appBarComponent(BuildContext context) {
  Widget _buildHelpSheet(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cara Mendapatkan Point",
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
          8.verticalSpace,
          Text(
            "Kamu harus menyelesaikan pertandingan untuk dapat mendapatkan point.",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Colors.black),
          ),
          8.verticalSpace,
          Text(
            "Hasil Pertandingan",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          8.verticalSpace,
          Container(
            padding: EdgeInsets.all(12.sp),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              spacing: 8.sp,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menang",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                    ),
                    Text(
                      "+110 Point",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        backgroundColor: Colors.green.shade50,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menang",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                    ),
                    Text(
                      "+50 Point",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        backgroundColor: Colors.green.shade50,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kalah",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                    ),
                    Text(
                      "-50 Point",
                      style: TextStyle(
                        color: Colors.red,
                        backgroundColor: Colors.red.shade50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          8.verticalSpace,
          Text(
            "Bonus Point",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          8.verticalSpace,
          Container(
            padding: EdgeInsets.all(12.sp),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bonus Kemenangan",
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(color: Colors.black),
                    ),
                    Text(
                      "n x 5 Pts",
                      style: TextStyle(
                        color: Colors.green,
                        backgroundColor: Colors.green.shade50,
                      ),
                    ),
                  ],
                ),
                4.verticalSpace,
                Text(
                  "Point (n) didapatkan berdasarkan selisih peringkat dengan lawan di leaderboard. Nilai point maksimum yang dapat ditambahkan adalah 20 Pts",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPeriodSheet(
    BuildContext context, {
    PeriodeModel? selectedPeriod,
  }) {
    return BlocBuilder<LeaderboardBloc, LeaderboardState>(
      builder: (context, state) {
        var select = selectedPeriod;
        return Padding(
          padding: EdgeInsets.all(16.w),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cara Mendapatkan Point",
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
                  RadioGroup<PeriodeModel>(
                    groupValue: select,
                    onChanged: (PeriodeModel? value) {
                      print(value);
                      setState(() {
                        select = value;
                      });
                    },
                    child: Column(
                      children: [
                        ...state.periods.map((periode) {
                          return RadioListTile<PeriodeModel>(
                            title: Text(periode.name),
                            value: periode,
                          );
                        }),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed:
                          select == null || select == state.filter.periode
                          ? null
                          : () {
                              context.read<LeaderboardBloc>().add(
                                LeaderboardEvent.updateFilter(
                                  filter: state.filter.copyWith(
                                    periode: select,
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
          ),
        );
      },
    );
  }

  return AppBar(
    title: BlocBuilder<LeaderboardBloc, LeaderboardState>(
      builder: (context, state) {
        if (state.status != FetchStatus.success) return const SizedBox.shrink();
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(state.filter.periode?.period ?? ""),
            IconButton(
              icon: const Icon(Icons.arrow_drop_down_circle),
              onPressed: () {
                final ctx = context.read<LeaderboardBloc>();
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return BlocProvider.value(
                      value: ctx,
                      child: _buildPeriodSheet(
                        context,
                        selectedPeriod: state.filter.periode,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    ),
    actions: [
      BlocBuilder<LeaderboardBloc, LeaderboardState>(
        builder: (context, state) {
          if (state.status != FetchStatus.success)
            return const SizedBox.shrink();
          return IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return _buildHelpSheet(context);
                },
              );
            },
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xFF4D37A5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          );
        },
      ),
    ],
  );
}
