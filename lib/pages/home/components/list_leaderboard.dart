import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/model/leaderboard_model.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_bloc.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_event.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';
import 'package:leaderboard/pages/home/components/podium.dart';

class ListLeaderboard extends StatefulWidget {
  const ListLeaderboard({super.key, this.isParticipated = false});

  final bool isParticipated;

  @override
  State<ListLeaderboard> createState() => _ListLeaderboardState();
}

class _ListLeaderboardState extends State<ListLeaderboard>
    with TickerProviderStateMixin {
  static var initialSheet = 0.5;
  static const maxSheet = 0.98;
  final DraggableScrollableController _sheetController =
      DraggableScrollableController();
  late AnimationController _podiumAnimationController;

  @override
  void initState() {
    super.initState();
    _podiumAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    widget.isParticipated ? initialSheet = 0.5 : initialSheet = 0.65;

    // Listen to sheet controller changes to animate podium
    _sheetController.addListener(_onSheetPositionChanged);
  }

  void _onSheetPositionChanged() {
    if (_sheetController.isAttached) {
      final sheetSize = _sheetController.size;
      if (sheetSize > initialSheet + 0.1) {
        final progress =
            ((sheetSize - initialSheet) / (maxSheet - initialSheet)).clamp(
              0.0,
              1.0,
            );
        _podiumAnimationController.value = progress;
        context.read<LeaderboardBloc>().add(
          LeaderboardEvent.hidePodium(hide: false),
        );
      } else {
        context.read<LeaderboardBloc>().add(
          LeaderboardEvent.hidePodium(hide: true),
        );
        _podiumAnimationController.value = 0.0;
      }
    }
  }

  @override
  void dispose() {
    _sheetController.removeListener(_onSheetPositionChanged);
    _sheetController.dispose();
    _podiumAnimationController.dispose();
    super.dispose();
  }

  void _onScroll(ScrollController scrollController) {
    var data = context.read<LeaderboardBloc>().state;
    if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200 &&
        data.filter.page != -1 &&
        data.loadMoreStatus != FetchStatus.loading) {
      context.read<LeaderboardBloc>().add(LeaderboardEvent.fetchLeaderboard());
    }
  }

  void _scrollToTop() {
    _sheetController.animateTo(
      1.0, // Full expansion (maxChildSize)
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToInitial() {
    _sheetController.animateTo(
      initialSheet, // Initial position
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
        builder: (context, state) {
          if (state.status != FetchStatus.success) {
            return const Center(child: Text('Failed to load leaderboard'));
          }

          var podium = state.podium.take(3);
          var others = state.podium.skip(state.showPodium ? 3 : 0);
          return Stack(
            children: [
              Positioned(
                top: 8.h,
                left: 0,
                right: 0,
                height: 1.sh,
                child: AnimatedBuilder(
                  animation: _podiumAnimationController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: 1.0 - _podiumAnimationController.value,
                      child: Transform.scale(
                        scale: 1.0 - (0.1 * _podiumAnimationController.value),
                        child: Transform.translate(
                          offset: Offset(
                            0,
                            -20 * _podiumAnimationController.value,
                          ),
                          child: PodiumComponent(podium: podium.toList()),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (state.podium.length > 3)
                DraggableScrollableSheet(
                  controller: _sheetController,
                  initialChildSize: initialSheet,
                  minChildSize: initialSheet,
                  maxChildSize: maxSheet,
                  builder: (context, scrollController) {
                    scrollController.addListener(
                      () => _onScroll(scrollController),
                    );
                    return GestureDetector(
                      onTap: () {
                        if (_sheetController.size >= maxSheet) {
                          _scrollToInitial();
                        } else {
                          _scrollToTop();
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: AnimatedBuilder(
                                animation: _podiumAnimationController,
                                builder: (context, child) {
                                  return Container(
                                    width: 40,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Color.lerp(
                                        Colors.grey.shade300,
                                        Colors.blue.shade400,
                                        _podiumAnimationController.value,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: ListView.separated(
                                controller: scrollController,
                                itemCount: others.length + 1,
                                itemBuilder: (context, index) {
                                  if (index >= others.length &&
                                      state.filter.page != -1) {
                                    return const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 24,
                                      ),
                                      child: Center(
                                        child: SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  if (state.filter.page == -1 &&
                                      index >= others.length) {
                                    return const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 24,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "No more data",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    );
                                  }

                                  final user = others.elementAt(index);
                                  return cardUser(user, index);
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                      return Divider(
                                        height: 1,
                                        color: Colors.black12,
                                      );
                                    },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }

  Widget cardUser(LeaderboardModel user, int index) {
    if (context.read<LeaderboardBloc>().state.showPodium) {
      index += 3;
    }
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 12.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 12.w,
            children: [
              Text(
                '${index + 1}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 42.w,
                height: 42.w,
                margin: EdgeInsets.only(bottom: 8.h),
                decoration: BoxDecoration(
                  color: const Color(0xFF4D37A5),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    user.name.substring(0, 1).toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${user.username}',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.arrow_drop_up, color: Colors.green, size: 24.sp),
              Text(
                '${user.point} Pts',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
