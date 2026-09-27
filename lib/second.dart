import 'package:flutter/material.dart';

void main() {
  runApp(const MindRelaxApp());
}

class MindRelaxApp extends StatelessWidget {
  const MindRelaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mind Deep Relax',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MindRelaxPage(),
    );
  }
}

class MindRelaxPage extends StatelessWidget {
  const MindRelaxPage({super.key});

  static const lightBlue = Color(0xFF08A5AA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              14,
              18,
              14,
              20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderImage(),
                const SizedBox(height: 17),
                _buildAuthor(),
                const SizedBox(height: 5),
                _buildTitle(),
                const SizedBox(height: 10),
                _buildDescription(),
                const SizedBox(height: 27),
                _buildPlayNextButton(),
                const SizedBox(height: 27),
                _buildSessionList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: AspectRatio(
        aspectRatio: 1.42,
        child: Image.asset(
          'assets/images/mind_deep_relax.png',
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }


  Widget _buildAuthor() {
    return const Text(
      'Peter Mach',
      style: TextStyle(
        fontSize: 13,
        color: Color(0xFF858585),
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Mind Deep Relax',
      style: TextStyle(
        fontSize: 21,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        height: 1.2,
      ),
    );
  }

  Widget _buildDescription() {
    return const Text(
      'Join the Community as we prepare over 33 days '
      'to relax and feel joy with the mind and happiness '
      'session across the World',
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF303030),
        height: 1.4,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildPlayNextButton() {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: lightBlue,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_arrow_outlined,
              size: 25,
            ),
            SizedBox(width: 8),
            Text(
              'Play Next Session',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionList() {
    return Column(
      children: [
        _buildSession(
          title: 'Sweet Memories',
          subtitle: 'December 29 Pre-Launch',
          color: const Color(0xFF347FE8),
        ),

        _buildSession(
          title: 'A Day Dream',
          subtitle: 'December 29 Pre-Launch',
          color: const Color(0xFF08A5AA),
        ),

        _buildSession(
          title: 'Mind Explore',
          subtitle: 'December 29 Pre-Launch',
          color: const Color(0xFFF29232),
        ),
      ],
    );
  }

  Widget _buildSession({
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      height: 74,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFEAEAEA),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          _buildSessionPlayButton(color),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF292929),
                    fontWeight: FontWeight.w700,
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF999999),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          _buildMoreButton(),
        ],
      ),
    );
  }


  Widget _buildSessionPlayButton(Color color) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.play_arrow_outlined,
        color: Colors.white,
        size: 25,
      ),
    );
  }

  Widget _buildMoreButton() {
    return SizedBox(
      width: 45,
      height: 45,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _dot(),
            const SizedBox(width: 3),
            _dot(),
            const SizedBox(width: 3),
            _dot(),
          ],
        ),
      ),
    );
  }

  Widget _dot() {
    return Container(
      width: 5,
      height: 5,
      decoration: const BoxDecoration(
        color: Color(0xFFD5D5D5),
        shape: BoxShape.circle,
      ),
    );
  }
}