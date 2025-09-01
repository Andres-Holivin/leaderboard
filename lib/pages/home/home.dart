import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_bloc.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/components/app_bar.dart';
import 'package:leaderboard/pages/home/components/circel_background.dart';
import 'package:leaderboard/pages/home/components/filter.dart';
import 'package:leaderboard/pages/home/components/sliver_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LeaderboardBloc()..add(InitLeaderboard())),
      ],
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: appBarComponent(),
        body: Stack(
          alignment: Alignment.center,
          children: [
            const CircelBackground(),
            SafeArea(
              child: Column(
                children: [
                  const FilterComponent(),
                  8.verticalSpace,
                  // const ParticipatedComponent(),
                  Expanded(child: SliverListComponent()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
