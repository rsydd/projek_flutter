import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final List<Color> subjectColors = [
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.amber,
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 30),
          // Avatar dan teks horizontal
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSdEG6Edc3U_J3qLZZc6nlFUqvhImGCPthWZvi0w5NDeZc3O9XV',
                ),
              ),
              SizedBox(width: 12),
              Text(
                "Hello, Rendy",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Text(
            "Find Your Subject!",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
          LayoutBuilder(
            builder: (context, constraints) {
              double imageHeight =
                  constraints.maxWidth * 0.5; // Adjust scale as needed
              return Container(
                width: double.infinity,
                height: imageHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.network(
                  'https://i.imgur.com/b24Xjh3.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: imageHeight,
                ),
              );
            },
          ),
          SizedBox(height: 10),
          Text(
            "Subject",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16), // Tambahkan jarak antara label dan grid
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            physics: NeverScrollableScrollPhysics(),
            children:
                subjectColors.map((color) {
                  return Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                }).toList(),
          ),
          SizedBox(height: 30),
          Text(
            "My Course",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            physics: NeverScrollableScrollPhysics(),
            children:
                subjectColors.reversed.map((color) {
                  return Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
