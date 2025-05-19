import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  final List<String> collections = [
    'Collection #1',
    'Collection #2',
    'Collection #3',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: collections.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              collections[index],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder:
                    (_, i) => Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
              ),
            ),
            SizedBox(height: 50),
          ],
        );
      },
    );
  }
}
