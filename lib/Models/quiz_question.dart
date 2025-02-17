class QuizQuestion {
  final String courseName;
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  QuizQuestion({
    required this.courseName,
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

final List<QuizQuestion> dummyQuestions = [
  // Flutter Basics (10 questions)
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "Which widget is used for responsive layouts?",
    answers: ["Container", "Row/Column", "Text", "Icon"],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "What is the base class for stateful widgets?",
    answers: ["StatelessWidget", "Widget", "StatefulWidget", "BuildContext"],
    correctAnswerIndex: 2,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "Which command creates a new Flutter project?",
    answers: ["flutter create", "flutter new", "flutter init", "flutter start"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "What is used to manage state in Flutter?",
    answers: ["setState", "BuildContext", "Widget", "MaterialApp"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "Which widget adds spacing around its child?",
    answers: ["Container", "Padding", "Margin", "Spacer"],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "What does SDK stand for in Flutter?",
    answers: ["Software Development Kit", "System Design Kit", "Service Development Kit", "Screen Design Kit"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "Which widget creates a scrollable list?",
    answers: ["Column", "ListView", "Container", "Stack"],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "What is the root widget for Material apps?",
    answers: ["MaterialApp", "WidgetApp", "RootApp", "MainApp"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "How to add platform-specific code in Flutter?",
    answers: ["Plugins", "Widgets", "Packages", "Extensions"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Flutter Basics",
    question: "What is Dart?",
    answers: ["Programming language", "UI Framework", "Database", "Design pattern"],
    correctAnswerIndex: 0,
  ),

  // Python (10 questions)
  QuizQuestion(
    courseName: "Python",
    question: "How to create a list in Python?",
    answers: ["[]", "{}", "()", "<>"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "Which keyword defines a function?",
    answers: ["func", "def", "function", "fn"],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "What is PEP 8?",
    answers: ["Python Enhancement Proposal", "Package Manager", "Programming Environment", "Performance Engine"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "How to open a file in read mode?",
    answers: ["open('file.txt', 'r')", "open('file.txt', 'w')", "open('file.txt')", "open('file.txt', 'a')"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "Which is used for virtual environments?",
    answers: ["venv", "virtual", "env", "pythonenv"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "What does __init__ method do?",
    answers: ["Class constructor", "Destructor", "Imports module", "Main function"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "Which loop is used for iterating sequences?",
    answers: ["for", "while", "do-while", "repeat"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "How to install packages in Python?",
    answers: ["pip", "npm", "brew", "apt-get"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "Which is NOT a Python framework?",
    answers: ["Django", "Flask", "React", "Pyramid"],
    correctAnswerIndex: 2,
  ),
  QuizQuestion(
    courseName: "Python",
    question: "What is the output of 2**3?",
    answers: ["8", "6", "9", "5"],
    correctAnswerIndex: 0,
  ),

  // Financial Accounting (10 questions)
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is the accounting equation?",
    answers: ["Assets = Liabilities + Equity", "Profit = Revenue - Expenses", "Debit = Credit", "Cash Flow = Income - Expenditure"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is a balance sheet?",
    answers: ["Snapshot of financial position", "Record of transactions", "Tax document", "Profit statement"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is double-entry bookkeeping?",
    answers: ["Debit and credit entries", "Single entry system", "Cash basis accounting", "Digital recording"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is accounts payable?",
    answers: ["Money owed by company", "Money owed to company", "Profit margin", "Tax liability"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is depreciation?",
    answers: ["Asset value reduction", "Profit calculation", "Tax deduction", "Revenue increase"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is FIFO?",
    answers: ["First-In First-Out", "Financial Instrument", "Tax form", "Audit procedure"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is GAAP?",
    answers: ["Accounting standards", "Tax code", "Banking regulation", "Investment strategy"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is a ledger?",
    answers: ["Record of transactions", "Financial statement", "Tax document", "Budget plan"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is working capital?",
    answers: ["Current assets - current liabilities", "Long-term investments", "Revenue - expenses", "Cash reserves"],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    courseName: "Financial Accounting",
    question: "What is EBITDA?",
    answers: ["Earnings before interest, taxes, depreciation and amortization", "Expense tracking", "Tax calculation", "Budget analysis"],
    correctAnswerIndex: 0,
  ),

  
];