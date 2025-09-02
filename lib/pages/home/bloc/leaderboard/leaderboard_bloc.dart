import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leaderboard/config/dependencies.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';
import 'package:leaderboard/service/podium_service.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc() : super(LeaderboardState()) {
    on<LeaderboardEvent>((event, emit) async {
      await event.map(
        initLeaderboard: (event) async {
          try {
            print("init leaderboard");
            var filter = state.filter;
            emit(state.copyWith(status: FetchStatus.loading));
            final sportTypes = await getIt<PodiumService>().fetchSportTypes();
            final regions = await getIt<PodiumService>().fetchRegions();
            final periods = await getIt<PodiumService>().fetchPeriods();
            final categories = await getIt<PodiumService>().fetchCategories();

            filter = filter.copyWith(
              sportType: sportTypes.isNotEmpty ? sportTypes[0] : null,
              region: regions.isNotEmpty ? regions[0] : null,
              periode: periods.isNotEmpty ? periods[0] : null,
              category: categories.isNotEmpty
                  ? categories.first.subCategory?.first
                  : null,
            );
            final participated = await getIt<PodiumService>().fetchParticipated(
              filter: filter,
            );
            filter = filter.copyWith(
              participated: participated.isNotEmpty ? participated[0] : null,
            );

            final podium = await getIt<PodiumService>().fetchLeaderboards(
              filter: filter,
            );
            emit(
              state.copyWith(
                sportTypes: sportTypes,
                categories: categories,
                regions: regions,
                podium: podium,
                participated: participated,
                periods: periods,
                status: FetchStatus.success,
                filter: filter,
              ),
            );
          } catch (e) {
            emit(state.copyWith(status: FetchStatus.failure));
          }
        },
        fetchLeaderboard: (event) async {
          try {
            emit(
              state.copyWith(
                loadMoreStatus: FetchStatus.loading,
                filter: state.filter.copyWith(page: state.filter.page + 1),
              ),
            );
            final newUsers = await getIt<PodiumService>().fetchLeaderboards(
              filter: state.filter,
              page: state.filter.page,
            );
            if (newUsers.isEmpty) {
              emit(
                state.copyWith(
                  loadMoreStatus: FetchStatus.success,
                  filter: state.filter.copyWith(page: -1),
                ),
              );
              return;
            }

            final updatedUsers = List.of(state.podium)..addAll(newUsers);
            emit(
              state.copyWith(
                loadMoreStatus: FetchStatus.success,
                podium: updatedUsers,
              ),
            );
          } catch (e) {
            emit(state.copyWith(status: FetchStatus.failure));
          }
        },
        hidePodium: (value) async {
          emit(state.copyWith(showPodium: value.hide));
        },
        updateFilter: (value) async {
          try {
            var filter = value.filter;
            emit(state.copyWith(status: FetchStatus.loading, filter: filter));
            final participated = await getIt<PodiumService>().fetchParticipated(
              filter: filter,
            );
            filter = filter.copyWith(
              participated: participated.isNotEmpty ? participated[0] : null,
            );
            final podium = await getIt<PodiumService>().fetchLeaderboards(
              filter: filter,
            );
            emit(
              state.copyWith(
                podium: podium,
                filter: filter,
                status: FetchStatus.success,
              ),
            );
          } catch (e) {
            emit(state.copyWith(status: FetchStatus.failure));
          }
        },
        refreshLeaderboard: (event) async {
          try {
            print("refresh leaderboard");
            emit(state.copyWith(status: FetchStatus.loading));
            final podium = await getIt<PodiumService>().fetchLeaderboards(
              filter: state.filter,
            );
            final participated = await getIt<PodiumService>().fetchParticipated(
              filter: state.filter,
            );
            emit(
              state.copyWith(
                podium: podium,
                participated: participated,
                status: FetchStatus.success,
              ),
            );
          } catch (e) {
            emit(state.copyWith(status: FetchStatus.failure));
          }
        },
      );
    });
  }
}
