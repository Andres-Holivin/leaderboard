import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leaderboard/config/dependencies.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';
import 'package:leaderboard/service/podium_service.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc() : super(LeaderboardState.initial()) {
    on<InitLeaderboard>((event, emit) async {
      try {
        emit(LeaderboardState.loading());
        final podiums = await getIt<PodiumService>().fetchPodiums();
        final sportTypes = await getIt<PodiumService>().fetchSportTypes();
        final regions = await getIt<PodiumService>().fetchRegions();
        final periods = await getIt<PodiumService>().fetchPeriods();
        emit(
          LeaderboardState.success(
            sportTypes: sportTypes,
            categories: [],
            regions: regions,
            podiums: podiums,
            periods: periods,
          ),
        );
      } catch (e) {
        emit(LeaderboardState.failure(e.toString()));
      }
    });
  }
}
