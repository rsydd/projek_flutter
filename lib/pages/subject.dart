import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Subject",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Informatika",
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Rangkuman Materi",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(height: 10),
          _buildYellowCards(4),
          const SizedBox(height: 15),
          Text(
            "Referensi Video",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYellowCards(int count) {
    return Column(
      children: List.generate(count, (index) {
        return Container(
          height: 50,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(12),
          ),
        );
      }),
    );
  }
}
