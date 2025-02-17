import 'package:flutter/material.dart';
import 'package:education_app/screens/certificate_details.dart'; // Import the details screen

class CertificatesScreen extends StatelessWidget {
  final List<Map<String, String>> certificates = [
    {'title': 'App Development', 'date': 'Completed on: 2025-12-31'},
    {'title': 'Accounting', 'date': 'Completed on: 2025-12-31'},
    {'title': 'Photography', 'date': 'Completed on: 2025-12-31'},
    {'title': 'Product Design', 'date': 'Completed on: 2025-12-31'},
    {'title': 'Marketing', 'date': 'Completed on: 2025-12-31'},
    {'title': 'Web Development', 'date': 'Completed on: 2025-12-31'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Softer background color
      appBar: AppBar(
        title: Text(
          'Certificates',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 4,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: certificates.length,
          itemBuilder: (context, index) {
            final certificate = certificates[index];

            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => CertificateDetailsScreen(
                            certificateTitle: certificate['title']!,
                            certificateDescription:
                                "Master the essentials of ${certificate['title']}. Gain expertise through hands-on courses.", // Dynamic Description
                            courses: [
                              "${certificate['title']} Basics",
                              "Advanced ${certificate['title']}",
                              "${certificate['title']} Tools",
                              "${certificate['title']} Certification Prep",
                              "Final Assessment",
                            ], // Dynamic course placeholders
                          ),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(20),
                child: Hero(
                  tag: certificate['title']!,
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.deepPurple.shade500,
                            Colors.purpleAccent.shade200,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            certificate['title']!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                certificate['date']!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: Colors.white,
                                size: 24,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
