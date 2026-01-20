import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Professional CV',
      theme: ThemeData(useMaterial3: true, fontFamily: 'Roboto'),
      home: const CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  static const String profileImage = 'assets/bczin.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 700;

          // LEFT PANEL
          final leftPanel = Container(
            width: isMobile ? double.infinity : 280,
            padding: const EdgeInsets.all(24),
            color: const Color(0xFF1E293B),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white24,
                    backgroundImage: const AssetImage(profileImage),
                    onBackgroundImageError: (_, __) {},
                  ),
                ),
                const SizedBox(height: 16),

                const Text(
                  "Sok Kimleng",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Telecommunication & Network Engineering",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),

                const SizedBox(height: 24),

                const _LeftInfoRow(
                  icon: Icons.email,
                  text: "sokimleng18@gmail.com",
                ),
                const SizedBox(height: 6),
                const _LeftInfoRow(icon: Icons.phone, text: "092 662 229"),
                const SizedBox(height: 6),
                const _LeftInfoRow(
                  icon: Icons.location_on,
                  text: "Phnom Penh, Cambodia",
                ),
                const SizedBox(height: 6),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 9,
                      backgroundImage: const AssetImage('assets/git.png'),
                      backgroundColor: Colors.transparent,
                      onBackgroundImageError: (_, __) {},
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        "github.com/lengzogratis",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  "SKILLS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(color: Colors.white24),
                const Text(
                  "• Python\n"
                  "• Java\n"
                  "• C / C++\n"
                  "• Flutter\n"
                  "• HTML / CSS / JS\n"
                  "• MATLAB",
                  style: TextStyle(color: Colors.white70, height: 1.35),
                ),

                const SizedBox(height: 24),

                const Text(
                  "LANGUAGES",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Divider(color: Colors.white24),
                const Text(
                  "English\nKhmer\nChinese\nFrench",
                  style: TextStyle(color: Colors.white70, height: 1.35),
                ),
              ],
            ),
          );

          // RIGHT PANEL (your content)
          final rightPanel = Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _SectionTitle("PROFILE"),
                Divider(),
                Text(
                  "Undergraduate student at the Institute of Technology of Cambodia "
                  "majoring in Telecommunication and Network Engineering. "
                  "Strong interest in computer networks, data analysis, and "
                  "software development.",
                  style: TextStyle(height: 1.4),
                ),

                SizedBox(height: 20),

                _SectionTitle("EXPERIENCE"),
                Divider(),

                _ItemTitle("Data Analysis & Machine Learning Internship"),
                SizedBox(height: 6),
                _IconLine(Icons.school, "Institute of Technology of Cambodia"),
                SizedBox(height: 6),
                _IconLine2(
                  leftIcon: Icons.date_range,
                  leftText: "August 2024 - September 2024",
                  rightIcon: Icons.location_on,
                  rightText: "Phnom Penh, Cambodia",
                ),
                SizedBox(height: 6),
                _Bullet(
                  "Collected and cleaned the datasets from room booking and book borrow system.",
                ),
                _Bullet(
                  "Build and Train machine learning models and applied to test dataset to evaluate the performance.",
                ),

                SizedBox(height: 12),

                _ItemTitle("Volunteering Experience"),
                SizedBox(height: 6),
                _IconLine(
                  Icons.event,
                  "Event Volunteer - Kid and Family Fair by Anussa",
                ),
                SizedBox(height: 6),
                _IconLine2(
                  leftIcon: Icons.date_range,
                  leftText: "August 2023 - Present",
                  rightIcon: Icons.location_on,
                  rightText: "Phnom Penh, Cambodia",
                ),
                SizedBox(height: 6),
                _Bullet(
                  "Checked and assist with stage sound setup to support event performance and announcement.",
                ),
                _Bullet(
                  "Managed the kid's activity zone, ensuring safety and engagement through interactive games and activities.",
                ),

                SizedBox(height: 12),

                _ItemTitle("IT Engineering Year 3 Internship"),
                SizedBox(height: 6),
                _IconLine(Icons.school, "E-Security Service Cambodia (ESS)"),
                SizedBox(height: 6),
                _IconLine2(
                  leftIcon: Icons.date_range,
                  leftText: "August 2025 - October 2025",
                  rightIcon: Icons.location_on,
                  rightText: "Phnom Penh, Cambodia",
                ),
                SizedBox(height: 6),
                _Bullet(
                  "Collected and cleaned the datasets from room booking and book borrow system.",
                ),
                _Bullet(
                  "Build and Train machine learning models and applied to test dataset to evaluate the performance.",
                ),

                SizedBox(height: 20),

                _SectionTitle("PROJECTS"),
                Divider(),

                _ItemTitle("Student Management System"),
                SizedBox(height: 6),
                _IconLine(Icons.school, "Institute of Technology of Cambodia"),
                SizedBox(height: 6),
                _IconLine2(
                  leftIcon: Icons.date_range,
                  leftText: "June 2024 - July 2024",
                  rightIcon: Icons.location_on,
                  rightText: "Phnom Penh, Cambodia",
                ),
                SizedBox(height: 6),
                _Bullet("Create a program to manage student information"),
                _Bullet(
                  "Added features to Add, Display, Delete, Search, and Update to Student records.",
                ),

                SizedBox(height: 12),

                _ItemTitle("Calculator Application"),
                SizedBox(height: 6),
                _IconLine(Icons.school, "Institute of Technology of Cambodia"),
                SizedBox(height: 6),
                _IconLine2(
                  leftIcon: Icons.date_range,
                  leftText: "July 2024 - August 2024",
                  rightIcon: Icons.location_on,
                  rightText: "Phnom Penh, Cambodia",
                ),
                SizedBox(height: 6),
                _Bullet(
                  "Design and implemented the logic using low-level code based on computer architecture principles.",
                ),
                _Bullet(
                  "Build a basic calculator that performs operations like addition, subtraction, multiplication, and division.",
                ),

                SizedBox(height: 20),

                _SectionTitle("EDUCATION"),
                Divider(),

                _ItemTitle("High School Diploma"),
                SizedBox(height: 6),
                _IconLine(Icons.school, "Baktouk High School"),
                SizedBox(height: 6),
                _IconLine2(
                  leftIcon: Icons.date_range,
                  leftText: "2019 - 2022",
                  rightIcon: Icons.location_on,
                  rightText: "Phnom Penh, Cambodia",
                ),

                SizedBox(height: 12),

                _ItemTitle(
                  "Bachelor's Degree in Telecommunication & Network Engineering",
                ),
                SizedBox(height: 6),
                _IconLine(Icons.school, "Institute of Technology of Cambodia"),
                SizedBox(height: 6),
                _IconLine2(
                  leftIcon: Icons.date_range,
                  leftText: "2022 - Present",
                  rightIcon: Icons.location_on,
                  rightText: "Phnom Penh, Cambodia",
                ),
              ],
            ),
          );

          // ✅ FULL SCREEN container + responsive layout
          return SingleChildScrollView(
            child: Container(
              width: double.infinity, // FULL WIDTH always
              color: Colors.white,
              child: isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [leftPanel, rightPanel],
                    )
                  : IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          leftPanel,
                          Expanded(child: rightPanel),
                        ],
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}

/* ---------- Reusable widgets ---------- */

class _LeftInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _LeftInfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: Colors.white70),
        const SizedBox(width: 8),
        Expanded(
          child: Text(text, style: const TextStyle(color: Colors.white70)),
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;
  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class _ItemTitle extends StatelessWidget {
  final String text;
  const _ItemTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}

class _IconLine extends StatelessWidget {
  final IconData icon;
  final String text;
  const _IconLine(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 15),
        const SizedBox(width: 6),
        Expanded(child: Text(text)),
      ],
    );
  }
}

class _IconLine2 extends StatelessWidget {
  final IconData leftIcon;
  final String leftText;
  final IconData rightIcon;
  final String rightText;

  const _IconLine2({
    required this.leftIcon,
    required this.leftText,
    required this.rightIcon,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(leftIcon, size: 15),
        const SizedBox(width: 6),
        Expanded(child: Text(leftText)),
        const SizedBox(width: 12),
        Icon(rightIcon, size: 15),
        const SizedBox(width: 6),
        Expanded(child: Text(rightText)),
      ],
    );
  }
}

class _Bullet extends StatelessWidget {
  final String text;
  const _Bullet(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text("• $text", style: const TextStyle(height: 1.35)),
    );
  }
}
