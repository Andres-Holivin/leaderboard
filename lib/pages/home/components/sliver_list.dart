import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaderboard/pages/home/components/podium.dart';

class SliverListComponent extends StatefulWidget {
  const SliverListComponent({super.key});

  @override
  State<SliverListComponent> createState() => _SliverListComponentState();
}

class _SliverListComponentState extends State<SliverListComponent>
    with TickerProviderStateMixin {
  final List<int> _items = List.generate(20, (index) => index);
  static var initialSheet = 0.5;
  static const maxSheet = 0.98;
  bool _isLoading = false;
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

    // Listen to sheet controller changes to animate podium
    _sheetController.addListener(_onSheetPositionChanged);
  }

  void _onSheetPositionChanged() {
    if (_sheetController.isAttached) {
      final sheetSize = _sheetController.size;
      // Start fading out when sheet reaches 0.85, fully hidden at 0.95
      if (sheetSize >= initialSheet) {
        final progress =
            ((sheetSize - initialSheet) / (maxSheet - initialSheet)).clamp(
              0.0,
              1.0,
            );
        _podiumAnimationController.value = progress;
      } else {
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
    if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200 &&
        !_isLoading) {
      _loadMore();
    }
  }

  Future<void> _loadMore() async {
    setState(() => _isLoading = true);

    // simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    final nextItems = List.generate(10, (i) => _items.length + i);
    setState(() {
      _items.addAll(nextItems);
      _isLoading = false;
    });
  }

  // Method to scroll sheet to top and hide podium
  void _scrollToTop() {
    _sheetController.animateTo(
      1.0, // Full expansion (maxChildSize)
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Method to scroll sheet to initial position and show podium
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
      child: Stack(
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
                      offset: Offset(0, -20 * _podiumAnimationController.value),
                      child: const PodiumComponent(),
                    ),
                  ),
                );
              },
            ),
          ),
          DraggableScrollableSheet(
            controller: _sheetController,
            initialChildSize: initialSheet,
            minChildSize: initialSheet,
            maxChildSize: maxSheet,
            builder: (context, scrollController) {
              scrollController.addListener(() => _onScroll(scrollController));
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
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                          itemCount: _items.length + (_isLoading ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index >= _items.length) {
                              return const Padding(
                                padding: EdgeInsets.all(16),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            return cardUser();
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(height: 1, color: Colors.black12);
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
      ),
    );
  }

  Widget cardUser() {
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
                '4',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CircleAvatar(
                radius: 24.r,
                backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Name',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Location',
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
                '5 Pts',
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
