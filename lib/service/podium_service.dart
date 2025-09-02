import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:leaderboard/data/category_data.dart';
import 'package:leaderboard/data/leadearboard_data.dart';
import 'package:leaderboard/data/participated_data.dart';
import 'package:leaderboard/data/period_data.dart';
import 'package:leaderboard/data/region_data.dart';
import 'package:leaderboard/data/sport_type_data.dart';
import 'package:leaderboard/model/category_model.dart';
import 'package:leaderboard/model/leaderboard_model.dart';
import 'package:leaderboard/model/participated_model.dart';
import 'package:leaderboard/model/periode_model.dart';
import 'package:leaderboard/model/region_model.dart';
import 'package:leaderboard/model/sport_type_model.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';

var faker = Faker();

class PodiumService {
  Future<List<SportTypeModel>> fetchSportTypes() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    var data = sportTypesData;
    return data;
  }

  Future<List<CategoryModel>> fetchCategories() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    var data = categoriesData;
    return data;
  }

  Future<List<RegionModel>> fetchRegions() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    var data = regionsData;
    return data;
  }

  Future<List<PeriodeModel>> fetchPeriods() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    var data = periodsData;
    return data;
  }

  Future<List<LeaderboardModel>> fetchLeaderboards({
    int page = 1,
    FilterState? filter,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    var data = leaderboardData;
    if (filter != null) {
      data = data
          .where(
            (e) =>
                e.category?.name == filter.category?.name &&
                e.region?.name == filter.region?.name &&
                e.sportType?.name == filter.sportType?.name,
          )
          .toList();
    }
    data.sortBy((e) => -e.point);
    print(page);
    data = data.skip((page - 1) * 20).take(20).toList();
    return data;
  }

  Future<List<ParticipatedModel>> fetchParticipated({
    FilterState? filter,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    var data = listParticipated;
    print("filter: $filter");
    if (filter != null) {
      data = data.where((e) => e.region.name == filter.region?.name).toList();
      print("data: $data");
    }

    return data;
  }
}
