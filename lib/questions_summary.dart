import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.quizSummary, super.key});
  final List<Map<String, Object>> quizSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: quizSummary.map((item) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(item['color'] as int),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    ((item['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (item['question']) as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          (item['user_answer']) as String,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 110, 147, 169),
                          ),
                        ),
                        Text(
                          (item['correct_answer']) as String,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 64, 185, 255),
                          ),
                        ),
                        const SizedBox(height: 7),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
