import 'package:flutter/material.dart';
import 'package:education_app/Models/quiz_question.dart';

class QuizScreen extends StatefulWidget {
  final String courseName;
  const QuizScreen({super.key, required this.courseName});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  int score = 0;
  bool showResult = false;
  late List<QuizQuestion> courseQuestions;

  @override
  void initState() {
    super.initState();
    courseQuestions = dummyQuestions
        .where((q) => q.courseName == widget.courseName)
        .toList();
  }

  void handleAnswerSelected(int index) {
    setState(() {
      selectedAnswerIndex = index;
      if (index == courseQuestions[currentQuestionIndex].correctAnswerIndex) {
        score++;
      }
    });
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < courseQuestions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedAnswerIndex = null;
      });
    } else {
      setState(() {
        showResult = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.courseName} Quiz"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: showResult
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Score: $score/${courseQuestions.length}",
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    score > courseQuestions.length ~/ 2 ? "Congratulations! You Passed!" : "Try Again!",
                    style: TextStyle(
                      fontSize: 20,
                      color: score > courseQuestions.length ~/ 2 ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearProgressIndicator(
                    value: (currentQuestionIndex + 1) / courseQuestions.length,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Question ${currentQuestionIndex + 1}/${courseQuestions.length}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    courseQuestions[currentQuestionIndex].question,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ...courseQuestions[currentQuestionIndex].answers.asMap().entries.map(
                    (entry) => GestureDetector(
                      onTap: () => handleAnswerSelected(entry.key),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: selectedAnswerIndex == entry.key
                              ? Colors.blue.withOpacity(0.2)
                              : Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: selectedAnswerIndex == entry.key
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "${String.fromCharCode(65 + entry.key)}. ",
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Expanded(child: Text(entry.value)),
                          ],
                        ),
                      ),
                    ),
                  ).toList(),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: selectedAnswerIndex != null ? goToNextQuestion : null,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text("Next Question"),
                  ),
                ],
              ),
            ),
    );
  }
}