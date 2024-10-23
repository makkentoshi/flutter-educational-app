import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import '/texts.dart';
import '/answers.dart';

class TaskDetailPage extends StatefulWidget {
  final String title;
  final String taskA;
  final String taskAdescription;
  final String taskB;
  final String taskBdescription;
  final String taskC;
  final String taskCdescription;

  const TaskDetailPage({
    Key? key,
    required this.title,
    required this.taskA,
    required this.taskAdescription,
    required this.taskB,
    required this.taskBdescription,
    required this.taskC,
    required this.taskCdescription,
  }) : super(key: key);

  @override
  _TaskDetailPageState createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  TextEditingController answerController = TextEditingController();
  bool _isLoading = false;
  String _feedback = '';

  // Метод для проверки ответа
  Future<void> checkAnswer(String answer, String taskText) async {
    await dotenv.load(fileName: ".env");

    final String? apiKey = dotenv.env['gemini_token'];

 

    if (apiKey == null) {
      return;
    }

    try {
      setState(() {
        _isLoading = true; // Показываем индикатор загрузки
        _feedback = ''; // Сбрасываем фидбэк
      });

      final model = GenerativeModel(
        model: 'gemini-1.5-flash',
        apiKey: apiKey,
      );

      final correctAnswers = answers;

      // Создаем промпт для проверки
final prompt = '''
You are provided with the user's answer: "$answer".
Check this answer against the correct answers listed below.

Rules:
- For each task, evaluate the answer based on correctness and similarity to the correct answers.
- Users can input their answers in any order, using the format "Task A: 1 - answer1, 2 - answer2, ...".
- !IMPORTANT! For example : for Task A, if the user scored 4 out of 5, report it as 4/20 points  , do not provide correctness FOR EACH TASK , ONLY FOR FULL WORK,  4/20,  13/20 and etc.
- For Tasks B and C, determine correctness based on conceptual similarity, rather than EXACT matches.
- Do not use double asterisks (**) or single asterisks (*) in your responses.
- !IMPORTANT! Provide only the total score out of 20 points and the percentage of correctly answered questions AND CALCULATE PERCENTAGE OF FULL WORK , FOR EXAMPLE : 4/20 = %20.
- Generate explanations or additional feedback on each incorrect answer and provide the correct answers DO NOT USE "**" IN YOUR ANSWERS , FOR EXAMPLE "**CORRECT**" - DO NOT USE IT USE ONLY WORD "CORRECT" AND ETC.
- !IMPORTANT! If user does not completed the task , DO 0 MARK FOR THIS TASK , FOR EXAMPLE : IF USER DID NOT ANSWER FOR TASK A , JUST DO 0 ZERO FOR TASK A AND JUST COUNT FOR B AND C.

Correct answers: $correctAnswers.
''';

      // Генерируем ответ
      final response = await model.generateContent([Content.text(prompt)]);



      // Выводим фидбэк от Gemini
      String feedback = response.text ?? "No feedback available";
      setState(() {
        _feedback = feedback; // Сохраняем фидбэк
        _isLoading = false; // Скрываем индикатор загрузки
      });

      // Открываем окно с результатом
      showFeedbackDialog(_feedback);
    } catch (e) {
      setState(() {
        _isLoading = false; // Скрываем индикатор загрузки в случае ошибки
        _feedback =
            "Error occurred while checking the answer: $e"; // Сохраняем сообщение об ошибке
      });
    }
  }

  // Метод для отображения диалогового окна с фидбэком
  void showFeedbackDialog(String feedback) {
    showDialog(
      context: context,
      barrierDismissible: false, // Не позволять закрывать окно нажатием на фон
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  // Добавлено для прокрутки
                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min, // Окно подстраивается по контенту
                    children: [
                      Text(
                        "Feedback",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        feedback,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Закрываем окно
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text("Close"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0.0,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop(); // Закрываем окно
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 60, 135, 234),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[500]!, Colors.blue[800]!],
        )),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  // Позволяет прокручивать контент
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.taskA,
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.taskAdescription,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.taskB,
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.taskBdescription,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.taskC,
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.taskCdescription,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              // Поле ввода и кнопка отправки
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: answerController,
                        maxLines: null,
                        minLines: 1,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your answer...',
                          hintStyle:
                              TextStyle(color: Color.fromARGB(137, 0, 0, 0)),
                        ),
                        style: const TextStyle(
                            color: Color.fromARGB(155, 0, 0, 0)),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        String answer = answerController.text;
                        String taskText =
                            widget.taskA; // Выбор текста для проверки
                        answerController.clear(); // Очищаем поле ввода
                        checkAnswer(answer, taskText); // Проверяем ответ
                      },
                    ),
                  ],
                ),
              ),
              if (_isLoading) // Индикатор загрузки
                const Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
