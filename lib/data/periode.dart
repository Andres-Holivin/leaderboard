class Periode {
  final DateTime startDate;
  final DateTime endDate;
  final bool isCurrent;

  Periode({
    required this.startDate,
    required this.endDate,
    this.isCurrent = false,
  });
}
