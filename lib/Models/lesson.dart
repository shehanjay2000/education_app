class Lesson {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  Lesson({
    required this.duration,
    required this.isCompleted,
    required this.isPlaying,
    required this.name,
  });
}

List<Lesson> lessonList = [
  Lesson(
    duration: '11 min 50 sec',
    isCompleted: true,
    isPlaying: true,
    name: 'why you need to learn flutter',
  ),
  Lesson(
    duration: '10 min 20 sec',
    isCompleted: false,
    isPlaying: false,
    name: 'Basic concepts of flutter',
  ),
  Lesson(
    duration: '6 min 30 sec',
    isCompleted: false,
    isPlaying: false,
    name: 'Roadmap of Learning',
  ),
  Lesson(
    duration: '9 min',
    isCompleted: true,
    isPlaying: true,
    name: 'What are Stateless and Statefull Widgets ?',
  ),
  Lesson(
    duration: '10 min',
    isCompleted: false,
    isPlaying: true,
    name: 'What is State Management ?',
  )
];
