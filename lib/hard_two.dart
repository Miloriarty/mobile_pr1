import 'package:flutter/material.dart';

void main() {
  runApp(const OrganizerApp());
}

class OrganizerApp extends StatelessWidget {
  const OrganizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organizer',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const OrganizerPage(),
    );
  }
}

class OrganizerPage extends StatelessWidget {
  const OrganizerPage({super.key});

  static const primary = Color(0xFF5261FF);
  static const lightPurple = Color(0xFFECEFff);
  static const textColor = Color(0xFF101828);
  static const secondaryText = Color(0xFF344054);
  static const dividerColor = Color(0xFFE6E8EF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            36,
            30,
            36,
            30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),

              const SizedBox(height: 34),

              _buildProfile(),

              const SizedBox(height: 28),

              _buildStatistics(),

              const SizedBox(height: 30),

              _buildActionButtons(),

              const SizedBox(height: 30),

              _buildTabs(),

              const SizedBox(height: 37),

              _buildAbout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: primary,
            size: 25,
          ),
        ),

        const SizedBox(width: 32),

        const Expanded(
          child: Text(
            'Organizer',
            style: TextStyle(
              color: textColor,
              fontSize: 34,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),
        ),

        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            color: lightPurple,
            borderRadius: BorderRadius.circular(17),
          ),
          child: const Icon(
            Icons.more_vert,
            color: primary,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _buildProfile() {
    return Column(
      children: [
        Center(
          child: ClipOval(
            child: Image.asset(
              'assets/images/albert_flores.png',
              width: 158,
              height: 158,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),

        const SizedBox(height: 32),

        const Center(
          child: Text(
            'Albert Flores',
            style: TextStyle(
              color: textColor,
              fontSize: 33,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatistics() {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: _buildStatistic(
              value: '2.368',
              title: 'Followers',
            ),
          ),

          Container(
            width: 1,
            height: 90,
            color: dividerColor,
          ),

          Expanded(
            child: _buildStatistic(
              value: '346',
              title: 'Following',
            ),
          ),

          Container(
            width: 1,
            height: 90,
            color: dividerColor,
          ),

          Expanded(
            child: _buildStatistic(
              value: '13',
              title: 'Events',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatistic({
    required String value,
    required String title,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: textColor,
            fontSize: 31,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 9),

        Text(
          title,
          style: const TextStyle(
            color: textColor,
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Column(
      children: [
        Container(
          height: 1,
          color: dividerColor,
        ),

        const SizedBox(height: 31),

        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 64,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_add_alt_1,
                        size: 21,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: SizedBox(
                height: 64,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: primary,
                    side: const BorderSide(
                      color: primary,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message,
                        size: 21,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Messages',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        Container(
          height: 1,
          color: dividerColor,
        ),
      ],
    );
  }

  Widget _buildTabs() {
    return Row(
      children: [
        Expanded(
          child: _buildTab(
            text: 'About',
            selected: true,
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: _buildTab(
            text: 'Events',
            selected: false,
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: _buildTab(
            text: 'Reviews',
            selected: false,
          ),
        ),
      ],
    );
  }

  Widget _buildTab({
    required String text,
    required bool selected,
  }) {
    return SizedBox(
      height: 57,
      child: selected
          ? ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      )
          : OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          padding: EdgeInsets.zero,
          side: const BorderSide(
            color: primary,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildAbout() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(
            color: secondaryText,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),

        SizedBox(height: 12),

        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore '
          'magna aliqua. Ut enim ad minim veniam, quis nostrud '
          'exercitation ullamco laboris nisi ut Lorem ipsum dolor sit '
          'amet, consectetur adipiscing elit, sed do eiusmod '
          'tempor incididunt ut labore et dolore magna aliqua.',
          style: TextStyle(
            color: secondaryText,
            fontSize: 19,
            height: 1.68,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 3),

        Text(
          'Read more...',
          style: TextStyle(
            color: primary,
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}