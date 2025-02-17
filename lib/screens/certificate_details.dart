import 'package:flutter/material.dart';

class CertificateDetailsScreen extends StatelessWidget {
  final String certificateTitle;
  final String certificateDescription;
  final List<String> courses;

  CertificateDetailsScreen({
    required this.certificateTitle,
    required this.certificateDescription,
    required this.courses,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Softer background color
      appBar: AppBar(
        title: Text(
          certificateTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 6,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Certificate Description Card
            Hero(
              tag: certificateTitle, // Hero animation for transition
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.purpleAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    certificateDescription,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            // Section Title
            Text(
              'Available Courses',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple.shade900,
              ),
            ),
            Divider(thickness: 1, color: Colors.deepPurple.shade300),
            SizedBox(height: 10),

            // Course List with Icons and Progress
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      leading: Icon(
                        Icons.check_circle_outline,
                        color: Colors.greenAccent.shade700,
                      ),
                      title: Text(
                        courses[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepPurple.shade700,
                        ),
                      ),
                      trailing: Icon(Icons.school, color: Colors.deepPurple),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
