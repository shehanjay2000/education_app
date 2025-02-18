import 'package:flutter/material.dart';

class Course {
  final String name;
  final String author;
  final String image; // URL or asset path
  final double completedCourse; // Value between 0.0 and 1.0
  final String categoryName; // Add category name to the course model

  Course({
    required this.name,
    required this.author,
    required this.image,
    required this.completedCourse,
    required this.categoryName,
  });
}

// Sample Course Data (Replace with your actual data)
List<Course> courses = [
  Course(
    name: "Flutter Basics",
    author: "John Doe",
    image: "assets/images/flutter.png",
    completedCourse: 0.7,
    categoryName: "App Development",
  ),
  Course(
    name: "Python",
    author: "Jane Smith",
    image: "assets/images/python.png",
    completedCourse: 0.3,
    categoryName: "App Development",
  ),
  Course(
    name: "Financial Accounting",
    author: "Alice Johnson",
    image: "assets/images/finacialAccounting.png",
    completedCourse: 0.9,
    categoryName: "Accounting",
  ),
  Course(
    name: "Intro to Photography",
    author: "Bob Williams",
    image: "assets/images/photo.png",
    completedCourse: 0.5,
    categoryName: "Photography ",
  ),
  Course(
    name: "UI/UX Design",
    author: "Eva Garcia",
    image: "assets/images/ui.png",
    completedCourse: 0.2,
    categoryName: "Product design",
  ),
  Course(
    name: "Digital Marketing 101",
    author: "David Lee",
    image: "assets/images/digitalMarketing.png",
    completedCourse: 0.6,
    categoryName: "Marketing",
  ),
  Course(
    name: "Web Development with React",
    author: "Sarah Chen",
    image: "assets/images/react.png",
    completedCourse: 0.8,
    categoryName: "Web Develpoment",
  ),
  // Add more courses as needed
];
