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
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  final String profileImage = 'assets/bczin.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),

      // ✅ LayoutBuilder so we know phone vs desktop
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 700;

          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              // ✅ horizontal scroll for phone
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Container(
                  color: Colors.white,

                  // ✅ This keeps the "PDF width" so phone won’t squeeze content
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: isMobile ? 950 : constraints.maxWidth,
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Left
                          Container(
                            width: 280,
                            padding: const EdgeInsets.all(24),
                            color: const Color(0xFF1E293B),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ✅ safer avatar (won't break if image fails)
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white24,
                                  backgroundImage: AssetImage(profileImage),
                                  onBackgroundImageError: (_, __) {},
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

                                const Text(
                                  "Telecommunication & Network Engineering",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),

                                const SizedBox(height: 24),

                                Row(
                                  children: const [
                                    Icon(
                                      Icons.email,
                                      size: 18,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "sokimleng18@gmail.com",
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.phone,
                                      size: 18,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "092 662 229",
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      size: 18,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Phnom Penh, Cambodia",
                                      style: TextStyle(color: Colors.white70),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),

                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 9,
                                      backgroundImage: const AssetImage(
                                        'assets/git.png',
                                      ),
                                      backgroundColor: Colors.transparent,
                                      onBackgroundImageError: (_, __) {},
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "github.com/lengzogratis",
                                      style: TextStyle(color: Colors.white70),
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
                                  style: TextStyle(color: Colors.white70),
                                ),

                                const SizedBox(height: 24),

                                const Text(
                                  "LANGUAGES",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Divider(color: Colors.white24),

                                const Text(
                                  "English\nKhmer\nChinese\nFrench",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                          ),

                          // Right
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "PROFILE",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(),
                                  Text(
                                    "Undergraduate student at the Institute of Technology of "
                                    "Cambodia majoring in Telecommunication and Network Engineering. "
                                    "Strong interest in computer networks, data analysis, and "
                                    "software development.",
                                  ),

                                  SizedBox(height: 20),

                                  Text(
                                    "EXPERIENCE",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(),

                                  /// ===== EXPERIENCE 1 =====
                                  Text(
                                    "Data Analysis & Machine Learning Internship",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),

                                  SizedBox(height: 3),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.school, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          "Institute of Technology of Cambodia",
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 3),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.date_range, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          "August 2024 - September 2024",
                                        ),
                                      ),
                                      Icon(Icons.location_on, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text("Phnom Penh, Cambodia"),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),
                                  Text(
                                    "• Collected and cleaned the datasets from room booking and book borrow system.",
                                  ),
                                  Text(
                                    "• Build and Train machine learning models and applied to test dataset to evaluate the performance.",
                                  ),

                                  SizedBox(height: 7),

                                  /// ===== VOLUNTEERING =====
                                  Text(
                                    "Volunteering Experience",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),

                                  SizedBox(height: 3),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.event, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          "Event Volunteer - Kid and Family Fair by Anussa",
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 3),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.date_range, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text("August 2023 - Present"),
                                      ),
                                      Icon(Icons.location_on, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text("Phnom Penh, Cambodia"),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),
                                  Text(
                                    "• Checked and assist with stage sound setup to support event performance and announcement.",
                                  ),
                                  Text(
                                    "• Managed the kid's activity zone, ensuring safety and engagement through interactive games and activities.",
                                  ),

                                  SizedBox(height: 7),

                                  /// ===== INTERNSHIP YEAR 3 =====
                                  Text(
                                    "IT Engineering Year 3 Internship",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),

                                  SizedBox(height: 3),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.school, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          "E-Security Service Cambodia (ESS)",
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 3),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.date_range, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text(
                                          "August 2025 - October 2025",
                                        ),
                                      ),
                                      Icon(Icons.location_on, size: 15),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: Text("Phnom Penh, Cambodia"),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 4),
                                  Text(
                                    "• Collected and cleaned the datasets from room booking and book borrow system.",
                                  ),
                                  Text(
                                    "• Build and Train machine learning models and applied to test dataset to evaluate the performance.",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
