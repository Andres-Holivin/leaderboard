import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});

  final List<Map<String, dynamic>> posts = List.generate(
    10,
    (index) => {
      'title': 'Post Title $index',
      'subtitle': 'Subtitle for post $index',
      'image': 'https://picsum.photos/seed/$index/400/200',
      'likes': 100 + index,
      'comments': 20 + index,
      'shares': 10 + index,
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Optional: Sliver for some header or spacing
          SliverToBoxAdapter(
            child: SizedBox(height: 80), // like top padding before sheet starts
          ),

          // Sliver that looks like bottom sheet
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ),

          // Main SliverList inside the "sheet"
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(child: ListTile(title: Text('Item $index')));
              }, childCount: 30),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final int count;

  const _StatCard({required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            '$count',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(label, style: TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.indigo[100],
          child: Icon(icon, color: Colors.indigo),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
