import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/model/category_model.dart';
import 'package:leaderboard/model/region_model.dart';
import 'package:leaderboard/model/sport_type_model.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_bloc.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';

class FilterComponent extends StatefulWidget {
  const FilterComponent({super.key});

  @override
  State<FilterComponent> createState() => _FilterComponentState();
}

class _FilterComponentState extends State<FilterComponent> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardBloc, LeaderboardState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            childAspectRatio: 2.8,
            shrinkWrap: true,
            children: [
              if (state.sportTypes.isNotEmpty)
                _buildDropdownSportType(
                  context,
                  selectedSport: state.filter.sportType,
                )
              else
                SizedBox.shrink(),
              if (state.categories.isNotEmpty)
                _buildDropdownCategory(
                  context,
                  selectedCategory: state.filter.category,
                )
              else
                SizedBox.shrink(),
              if (state.regions.isNotEmpty)
                _buildDropdownRegion(
                  context,
                  selectedRegion: state.filter.region,
                )
              else
                SizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDropdownRegion(
    BuildContext context, {
    RegionModel? selectedRegion,
  }) {
    return TextButton(
      onPressed: () {
        final ctx = context.read<LeaderboardBloc>();
        showModalBottomSheet(
          context: context,
          useSafeArea: true,
          useRootNavigator: true,
          isScrollControlled: true,
          builder: (context) {
            return BlocProvider.value(
              value: ctx,
              child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
                builder: (context, state) {
                  var selectedRegion = state.filter.region;
                  var isListRegion = false;
                  return StatefulBuilder(
                    builder: (context, setState) {
                      void selectRegion(RegionModel? region) {
                        print("update region filter $region");

                        context.read<LeaderboardBloc>().add(
                          LeaderboardEvent.updateFilter(
                            filter: context
                                .read<LeaderboardBloc>()
                                .state
                                .filter
                                .copyWith(region: region),
                          ),
                        );

                        Navigator.pop(context);
                      }

                      return Container(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _filterTitle(title: "Pilih Wilayah"),
                            4.verticalSpace,
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search),
                                hintText: "Cari nama kota",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 8,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  isListRegion = true;
                                });
                              },
                            ),
                            8.verticalSpace,
                            Divider(),
                            8.verticalSpace,
                            isListRegion
                                ? _buildListRegion(
                                    context,
                                    listRegion: state.regions.take(8).toList(),
                                    selectRegion: selectRegion,
                                  )
                                : _buildChipRegion(
                                    listRegion: state.regions.take(8).toList(),
                                    selectedRegion: selectedRegion,
                                    onSelected: (value, region) {
                                      setState(() {
                                        if (value) {
                                          selectRegion(region);
                                        } else {
                                          selectRegion(state.regions.first);
                                        }
                                      });
                                    },
                                  ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              selectedRegion?.name ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }

  Widget _buildListRegion(
    BuildContext context, {
    required List<RegionModel> listRegion,
    required void Function(RegionModel) selectRegion,
  }) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listRegion.length,
      itemBuilder: (context, index) {
        final region = listRegion[index];
        return ListTile(
          title: Text(region.name),
          onTap: () {
            selectRegion(region);
          },
        );
      },
    );
  }

  Widget _buildChipRegion({
    required List<RegionModel> listRegion,
    void Function(bool, RegionModel)? onSelected,
    RegionModel? selectedRegion,
  }) {
    return Wrap(
      spacing: 4.sp,
      children: [
        ...listRegion.map((region) {
          return ChoiceChip(
            label: Text(region.name),
            selected: selectedRegion == region,
            onSelected: onSelected != null
                ? (selected) => onSelected(selected, region)
                : null,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildDropdownCategory(
    BuildContext context, {
    CategoryModel? selectedCategory,
  }) {
    return TextButton(
      onPressed: () {
        final ctx = context.read<LeaderboardBloc>();
        showModalBottomSheet(
          context: context,
          useSafeArea: true,
          useRootNavigator: true,
          isScrollControlled: true,
          builder: (context) {
            return BlocProvider.value(
              value: ctx,
              child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
                builder: (context, state) {
                  var selectedCategory = state.filter.category;
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return Container(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _filterTitle(title: "Cabang Olahraga"),
                            4.verticalSpace,

                            RadioGroup<CategoryModel>(
                              groupValue: selectedCategory,
                              onChanged: (CategoryModel? value) {
                                setState(() {
                                  selectedCategory = value;
                                });
                              },
                              child: Column(
                                children: [
                                  4.verticalSpace,
                                  ...state.categories.map((category) {
                                    if (category.subCategory != null &&
                                        category.subCategory!.isNotEmpty) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            category.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 14.sp,
                                                ),
                                          ),
                                          4.verticalSpace,
                                          ...category.subCategory!.map((
                                            subCat,
                                          ) {
                                            return Padding(
                                              padding: EdgeInsets.only(
                                                left: 8.sp,
                                              ),
                                              child:
                                                  _buildRadioTile<
                                                    CategoryModel
                                                  >(
                                                    value: subCat,
                                                    title: Text(subCat.name),
                                                  ),
                                            );
                                          }),
                                        ],
                                      );
                                    } else {
                                      return _buildRadioTile<CategoryModel>(
                                        value: category,
                                        title: Text(
                                          category.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 14.sp,
                                              ),
                                        ),
                                      );
                                    }
                                  }),
                                ],
                              ),
                            ),

                            4.verticalSpace,
                            _buildApplyButton(
                              context,
                              disable:
                                  selectedCategory == null ||
                                  selectedCategory == state.filter.category,
                              onPressed: () {
                                context.read<LeaderboardBloc>().add(
                                  LeaderboardEvent.updateFilter(
                                    filter: state.filter.copyWith(
                                      category: selectedCategory,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(selectedCategory?.name ?? '', style: TextStyle()),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }

  Widget _buildDropdownSportType(
    BuildContext context, {
    SportTypeModel? selectedSport,
  }) {
    return TextButton(
      onPressed: () {
        final ctx = context.read<LeaderboardBloc>();
        showModalBottomSheet(
          context: context,
          useSafeArea: true,
          useRootNavigator: true,
          isScrollControlled: true,
          builder: (context) {
            return BlocProvider.value(
              value: ctx,
              child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
                builder: (context, state) {
                  var selectedSport = state.filter.sportType;
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return Container(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _filterTitle(title: "Cabang Olahraga"),
                            4.verticalSpace,

                            RadioGroup<SportTypeModel>(
                              groupValue: selectedSport,
                              onChanged: (SportTypeModel? value) {
                                setState(() {
                                  selectedSport = value;
                                });
                              },
                              child: Column(
                                children: [
                                  _headerSportType('Preferensi Olahragamu'),
                                  2.verticalSpace,
                                  ...state.sportTypes
                                      .take(3)
                                      .map(
                                        (sport) =>
                                            _buildRadioTile<SportTypeModel>(
                                              value: sport,
                                              title: Text(
                                                '${sport.icon} ${sport.name}',
                                              ),
                                            ),
                                      ),

                                  4.verticalSpace,
                                  _headerSportType('Semua Olahraga'),
                                  2.verticalSpace,
                                  ...state.sportTypes
                                      .skip(3)
                                      .map(
                                        (sport) =>
                                            _buildRadioTile<SportTypeModel>(
                                              value: sport,
                                              title: Text(
                                                '${sport.icon} ${sport.name}',
                                              ),
                                            ),
                                      ),
                                ],
                              ),
                            ),

                            4.verticalSpace,
                            _buildApplyButton(
                              context,
                              disable:
                                  selectedSport == null ||
                                  selectedSport == state.filter.sportType,
                              onPressed: () {
                                context.read<LeaderboardBloc>().add(
                                  LeaderboardEvent.updateFilter(
                                    filter: state.filter.copyWith(
                                      sportType: selectedSport,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(selectedSport?.name ?? '', style: TextStyle())),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }

  Widget _filterTitle({required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
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
    );
  }

  Widget _buildApplyButton(
    BuildContext context, {
    bool disable = false,
    required void Function()? onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: disable
            ? null
            : () {
                onPressed?.call();
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
    );
  }

  Widget _headerSportType(String title) {
    return Container(
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
    );
  }

  Widget _buildRadioTile<T>({
    required T value,
    required Widget title,
    IconData? icon,
  }) {
    return ListTile(
      leading: icon != null ? Icon(icon, size: 24) : null,
      title: title,
      trailing: Radio<T>(value: value, activeColor: Colors.blue),
      contentPadding: EdgeInsets.zero,
    );
  }
}
