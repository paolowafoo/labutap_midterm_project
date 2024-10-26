// lib/about_screen.dart
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.teal, // Updated app bar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal[100]!,
              Colors.teal[300]!
            ], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      AssetImage('images/profile.jpg'), // Profile image
                ),
                const SizedBox(height: 20),
                const Text(
                  'Paul Vincent N. Labutap',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                const SizedBox(height: 30),
                _buildTextContainer(
                  'I am a Flutter developer with a passion for creating beautiful and functional mobile applications. With a strong focus on user experience, I strive to design interfaces that are not only visually appealing but also intuitive and easy to navigate. My journey in mobile development has taught me the importance of clean code and efficient design.',
                ),
                const SizedBox(height: 20),
                _buildTextContainer(
                  'In addition to my technical skills, I enjoy learning new technologies and constantly improving my abilities. I believe that staying up-to-date with the latest trends in mobile development is essential for delivering high-quality applications. Whether it’s exploring new Flutter packages or experimenting with different design patterns, I am always eager to expand my knowledge.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextContainer(String text) {
    return Container(
      margin:
          const EdgeInsets.symmetric(horizontal: 8.0), // Add margin for spacing
      padding: const EdgeInsets.all(20), // Padding inside the container
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(10), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black26, // Shadow color
            blurRadius: 8, // Softer shadow
            offset: const Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, color: Colors.black87), // Updated text style
        textAlign: TextAlign.center,
      ),
    );
  }
}
