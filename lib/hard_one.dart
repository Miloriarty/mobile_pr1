import 'package:flutter/material.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3D Design Basic',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const CoursePage(),
    );
  }
}

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  static const primary = Color(0xFF4B55FF);
  static const lightPurple = Color(0xFFECEFff);
  static const textColor = Color(0xFF101828);
  static const secondaryText = Color(0xFF344054);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  23,
                  25,
                  23,
                  25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    const SizedBox(height: 48),

                    _buildMainImage(),
                    const SizedBox(height: 38),

                    _buildStats(),
                    const SizedBox(height: 52),

                    _buildCourseTitle(),
                    const SizedBox(height: 52),

                    _buildDescription(),
                    const SizedBox(height: 52),

                    _buildLessonsHeader(),
                    const SizedBox(height: 48),

                    _buildLesson(),
                    const SizedBox(height: 90),
                  ],
                ),
              ),
            ),

            _buildEnrollButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: lightPurple,
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chevron_left,
              color: primary,
              size: 36,
            ),
          ),
        ),

        const SizedBox(width: 34),

        const Text(
          '3D Design Basic',
          style: TextStyle(
            color: textColor,
            fontSize: 39,
            fontWeight: FontWeight.w700,
            height: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildMainImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27),
      child: AspectRatio(
        aspectRatio: 1.42,
        child: Image.asset(
          'assets/images/3d_design.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildStats() {
    return Row(
      children: [
        _buildStat(
          icon: Icons.groups_rounded,
          text: '4.569',
        ),

        const SizedBox(width: 20),

        _buildStat(
          icon: Icons.star,
          text: '4.9',
        ),

        const SizedBox(width: 20),

        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(
            horizontal: 19,
          ),
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(28),
          ),
          child: const Center(
            child: Text(
              'Best Seller',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStat({
    required IconData icon,
    required String text,
  }) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: lightPurple,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: primary,
            size: 25,
          ),

          const SizedBox(width: 10),

          Text(
            text,
            style: const TextStyle(
              color: primary,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseTitle() {
    return const Text(
      '3D Design Basic',
      style: TextStyle(
        color: textColor,
        fontSize: 39,
        fontWeight: FontWeight.w700,
        height: 1.1,
      ),
    );
  }

  Widget _buildDescription() {
    return const Text(
      'In this course you will learn how to build a space '
      'to a 3-dimensional product. There are 24 premium '
      'learning videos for you.',
      style: TextStyle(
        color: Colors.black,
        fontSize: 23,
        height: 1.65,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildLessonsHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: Text(
            '24 Lessons (20 hours)',
            style: TextStyle(
              color: secondaryText,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: const Text(
            'See all',
            style: TextStyle(
              color: primary,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLesson() {
    return Container(
      width: double.infinity,
      height: 153,
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: const Color(0xFFF0F1F5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 20,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        children: [
          _buildLessonImage(),

          const SizedBox(width: 34),

          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Introduction to 3D',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  '20 mins',
                  style: TextStyle(
                    color: secondaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.check_circle_outline,
            color: primary,
            size: 38,
          ),
        ],
      ),
    );
  }

  Widget _buildLessonImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Image.asset(
        'assets/images/3d_design.png',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildEnrollButton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        23,
        10,
        23,
        20,
      ),
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: const Text(
            'Enroll - \$24.99',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}