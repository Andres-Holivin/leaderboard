import 'package:faker/faker.dart';
import 'package:leaderboard/data/category.dart';
import 'package:leaderboard/data/periode.dart';
import 'package:leaderboard/data/podium.dart';
import 'package:leaderboard/data/region.dart';
import 'package:leaderboard/data/sport_type.dart';

var faker = Faker();

class PodiumService {
  Future<List<Podium>> fetchPodiums() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    return List.generate(10, (index) {
      return Podium(
        name: faker.person.name(),
        username: faker.internet.userName(),
        score: faker.randomGenerator.integer(100, min: 0),
      );
    });
  }

  Future<List<SportType>> fetchSportTypes() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    return [
      SportType(name: 'Football', icon: '⚽'),
      SportType(name: 'Basketball', icon: '🏀'),
      SportType(name: 'Tennis', icon: '🎾'),
      SportType(name: 'Cricket', icon: '🏏'),
      SportType(name: 'Baseball', icon: '⚾'),
    ];
  }

  Future<List<Category>> fetchCategories() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    return [
      Category(
        name: 'Individu',
        subCategory: [
          Category(name: 'Tunggal'),
          Category(name: 'Ganda'),
        ],
      ),
      Category(name: 'Komunitas'),
    ];
  }

  Future<List<Region>> fetchRegions() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    return [
      Region(name: 'Asia'),
      Region(name: 'Europe'),
      Region(name: 'North America'),
      Region(name: 'South America'),
      Region(name: 'Africa'),
    ];
  }

  Future<List<Periode>> fetchPeriods() async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    return [
      Periode(
        startDate: DateTime(2024, 1, 1),
        endDate: DateTime(2024, 1, 31),
        isCurrent: true,
      ),
      Periode(startDate: DateTime(2024, 2, 1), endDate: DateTime(2024, 2, 29)),
      Periode(startDate: DateTime(2024, 3, 1), endDate: DateTime(2024, 3, 31)),
      Periode(startDate: DateTime(2024, 4, 1), endDate: DateTime(2024, 4, 30)),
      Periode(startDate: DateTime(2024, 5, 1), endDate: DateTime(2024, 5, 31)),
    ];
  }
}
