// lib/projects_screen.dart
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth > 600
                  ? 3
                  : 1, // Adjusts columns based on screen width
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 6, // Number of projects to display
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Rounded corners for card
                ),
                elevation:
                    8, // Increased elevation for a stronger shadow effect
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(
                                12)), // Rounded top corners for image
                        child: Image.asset(
                          'images/halloween.png', // Image asset
                          fit: BoxFit
                              .cover, // Fit the image within the available space
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                          12.0), // Increased padding for text
                      child: Text(
                        'Halloween Landing Page', // Set title for all projects
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              18, // Increased font size for better readability
                          color: Colors.black, // Text color for contrast
                        ),
                        textAlign: TextAlign.center, // Centered text
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
