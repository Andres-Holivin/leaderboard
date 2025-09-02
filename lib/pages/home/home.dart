import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_bloc.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';
import 'package:leaderboard/pages/home/components/app_bar.dart';
import 'package:leaderboard/pages/home/components/circel_background.dart';
import 'package:leaderboard/pages/home/components/empty_leaderboard.dart';
import 'package:leaderboard/pages/home/components/filter.dart';
import 'package:leaderboard/pages/home/components/participated.dart';
import 'package:leaderboard/pages/home/components/list_leaderboard.dart';

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
        appBar: appBarComponent(context),
        body: Stack(
          alignment: Alignment.center,
          children: [
            const CircelBackground(),
            SafeArea(
              child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
                builder: (context, state) {
                  if (state.status == FetchStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.status == FetchStatus.failure) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.error, size: 64),
                          const SizedBox(height: 16),
                          const Text('Failed to load leaderboard'),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              context.read<LeaderboardBloc>().add(
                                const InitLeaderboard(),
                              );
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  }
                  var isParticipated = state.filter.participated != null;
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<LeaderboardBloc>().add(
                        LeaderboardEvent.refreshLeaderboard(),
                      );
                    },
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: SizedBox(
                            height: constraints.maxHeight,
                            child: Column(
                              children: [
                                const FilterComponent(),
                                8.verticalSpace,
                                isParticipated
                                    ? ParticipatedComponent()
                                    : const SizedBox.shrink(),
                                if (state.podium.isEmpty)
                                  const Expanded(child: EmptyLeaderboard())
                                else
                                  Expanded(
                                    child: ListLeaderboard(
                                      isParticipated: isParticipated,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
