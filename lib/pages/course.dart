import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  final List<String> collections = [
    'Collection #1',
    'Collection #2',
    'Collection #3',
  ];

  CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.4; // Lebih kecil dari sebelumnya

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: collections.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              collections[index],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder:
                    (_, i) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: itemWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        );
      },
    );
  }
}
