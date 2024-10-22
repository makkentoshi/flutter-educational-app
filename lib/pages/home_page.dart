import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/texts.dart'; // Импортируйте texts.dart, чтобы использовать тексты

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Список тем и соответствующих текстов
  final List<Map<String, dynamic>> topics = [
    {
      "title": "Hobbies and Qualities",
      "icon": Icons.table_chart,
      "text": textHobbies
    },
    {
      "title": "Exercise and Sport",
      "icon": Icons.sports_basketball,
      "text": textRunning
    },
    {
      "title": "Charities and Conflict",
      "icon": Icons.handshake,
      "text": textCharity
    },
    {
      "title": "Tradition and Language",
      "icon": Icons.language,
      "text": textTradition
    },
    {"title": "Music and Film", "icon": Icons.music_note, "text": textMusic},
    {
      "title": "Travel an Tourism",
      "icon": Icons.travel_explore,
      "text": textTravel
    },
    {
      "title": "Science and Technology",
      "icon": Icons.science,
      "text": textScience
    },
  ];

  // Метод для отображения полного текста при выборе темы
  void _showFullText(String title, String fullText) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                // Позволяет прокручивать контент
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        title,
                        style: GoogleFonts.inter(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        fullText,
                        style: GoogleFonts.inter(
                            fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Заголовок
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Texts',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Сетка с квадратами
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 колонки
                    childAspectRatio: 4 / 3, // Соотношение сторон квадратов
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    final topic = topics[index];
                    return GestureDetector(
                      onTap: () {
                        _showFullText(topic["title"], topic["text"]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              topic["icon"],
                              size: 40,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: Text(
                                topic["title"],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
