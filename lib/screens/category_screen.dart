import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/category_button.dart';
import 'setup_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF0A0A2E),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),

              const SizedBox(height: 20),
              Text(
                'ONE PHONE',
                style: GoogleFonts.bebasNeue(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFC700),
                ),
              ),
              Text(
                'ONE LIE',
                style: GoogleFonts.bebasNeue(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFC700),
                ),
              ),
              const SizedBox(height: 60),
               Text(
                'Choose a category',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CategoryButton(
                      icon: Icons.person_outline,
                      label: 'Personal',
                      onTap: () => _navigateToSetup(context, 'personal'),
                    ),
                    const SizedBox(height: 20),
                    CategoryButton(
                      icon: Icons.sports_soccer,
                      label: 'Football',
                      onTap: () => _navigateToSetup(context, 'football'),
                    ),
                    const SizedBox(height: 20),
                    CategoryButton(
                      icon: Icons.favorite_border,
                      label: 'Preferences',
                      onTap: () => _navigateToSetup(context, 'preferences'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    )
    );
  }

  void _navigateToSetup(BuildContext context, String categoryId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SetupScreen(categoryId: categoryId),
      ),
    );
  }
}

