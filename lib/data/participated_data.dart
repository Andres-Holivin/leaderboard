import 'package:leaderboard/model/category_model.dart';
import 'package:leaderboard/model/participated_model.dart';
import 'package:leaderboard/model/region_model.dart';
import 'package:leaderboard/model/sport_type_model.dart';

List<ParticipatedModel> listParticipated = [
  ParticipatedModel(
    id: 1,
    name: 'Le Tropico Sports Club',
    username: 'letropico',
    rank: 1,
    point: 50,
    sportType: SportTypeModel(name: 'Squash', icon: ""),
    category: CategoryModel(name: 'Tunggal'),
    region: RegionModel(name: 'Asia'),
  ),
  ParticipatedModel(
    id: 2,
    name: 'Jakarta Badminton Club',
    username: 'jakartabadminton',
    point: 70,
    rank: 2,
    sportType: SportTypeModel(name: 'Badminton', icon: ""),
    category: CategoryModel(name: 'Tunggal'),
    region: RegionModel(name: 'Asia'),
  ),
  ParticipatedModel(
    id: 3,
    name: 'Bali Sports Club',
    username: 'balisports',
    point: 60,
    rank: 3,
    sportType: SportTypeModel(name: 'Tenis Meja', icon: ""),
    category: CategoryModel(name: 'Komunitas'),
    region: RegionModel(name: 'Asia'),
  ),
  ParticipatedModel(
    id: 4,
    name: 'Surabaya Badminton Club',
    username: 'surabayabadminton',
    point: 80,
    rank: 4,
    sportType: SportTypeModel(name: 'Badminton', icon: ""),
    category: CategoryModel(name: 'Tunggal'),
    region: RegionModel(name: 'Europe'),
  ),
  ParticipatedModel(
    id: 5,
    name: 'Medan Sports Club',
    username: 'medansports',
    point: 90,
    rank: 5,
    sportType: SportTypeModel(name: 'Tenis Meja', icon: ""),
    category: CategoryModel(name: 'Komunitas'),
    region: RegionModel(name: 'North America'),
  ),
  ParticipatedModel(
    id: 6,
    name: 'Makassar Sports Club',
    username: 'makassarsports',
    point: 85,
    rank: 6,
    sportType: SportTypeModel(name: 'Badminton', icon: ""),
    partner: 'John Doe',
    category: CategoryModel(name: 'Ganda'),
    region: RegionModel(name: 'North America'),
  ),
];
