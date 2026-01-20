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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
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
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(profileImage),
                        ),

                        SizedBox(height: 16),

                        Text(
                          "Sok Kimleng",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "Telecommunication & Network Engineering",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),

                        SizedBox(height: 24),

                        Row(
                          children: [
                            Icon(Icons.email, size: 18, color: Colors.white70),
                            SizedBox(width: 8),
                            Text(
                              "sokimleng18@gmail.com",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.phone, size: 18, color: Colors.white70),
                            SizedBox(width: 8),
                            Text(
                              "092 662 229",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
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
                        SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 9,
                              backgroundImage: AssetImage('assets/git.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "github.com/lengzogratis",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "SKILLS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(color: Colors.white24),

                        Text(
                          "• Python\n"
                          "• Java\n"
                          "• C / C++\n"
                          "• Flutter\n"
                          "• HTML / CSS / JS\n"
                          "• MATLAB",
                          style: TextStyle(color: Colors.white70),
                        ),

                        SizedBox(height: 24),

                        Text(
                          "LANGUAGES",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(color: Colors.white24),

                        Text(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range, size: 15),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text("August 2024 - September 2024"),
                              ),
                              Icon(Icons.location_on, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Phnom Penh, Cambodia")),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("August 2023 - Present")),
                              Icon(Icons.location_on, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Phnom Penh, Cambodia")),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range, size: 15),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text("August 2025 - October 2025"),
                              ),
                              Icon(Icons.location_on, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Phnom Penh, Cambodia")),
                            ],
                          ),

                          SizedBox(height: 4),
                          Text(
                            "• Collected and cleaned the datasets from room booking and book borrow system.",
                          ),
                          Text(
                            "• Build and Train machine learning models and applied to test dataset to evaluate the performance.",
                          ),

                          SizedBox(height: 20),

                          /// ===== PROJECTS =====
                          Text(
                            "PROJECTS",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(),

                          Text(
                            "Student Management System",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("June 2024 - July 2024")),
                              Icon(Icons.location_on, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Phnom Penh, Cambodia")),
                            ],
                          ),

                          SizedBox(height: 4),
                          Text(
                            "• Create a program to manage student information",
                          ),
                          Text(
                            "• Added features to Add, Display, Delete, Search, and Update to Student records.",
                          ),

                          SizedBox(height: 7),

                          Text(
                            "Calculator Application",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("July 2024 - August 2024")),
                              Icon(Icons.location_on, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Phnom Penh, Cambodia")),
                            ],
                          ),

                          SizedBox(height: 4),
                          Text(
                            "• Design and implemented the logic using low-level code based on computer architecture principles.",
                          ),
                          Text(
                            "• Build a basic calculator that performs operations like addition, subtraction, multiplication, and division.",
                          ),

                          SizedBox(height: 24),

                          /// ===== EDUCATION =====
                          Text(
                            "EDUCATION",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(),

                          Text(
                            "High School Diploma",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.school, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Baktouk High School")),
                            ],
                          ),

                          SizedBox(height: 3),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("2019 - 2022")),
                              Icon(Icons.location_on, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Phnom Penh, Cambodia")),
                            ],
                          ),

                          SizedBox(height: 7),
                          Text(
                            "Bachelor's Degree in Telecommunication & Network Engineering",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.date_range, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("2022 - Present")),
                              Icon(Icons.location_on, size: 15),
                              SizedBox(width: 5),
                              Expanded(child: Text("Phnom Penh, Cambodia")),
                            ],
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
    );
  }
}
