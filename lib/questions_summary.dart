import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (data['correct_answer'] as String ==
                                data['user_answer'] as String)
                            ? const Color.fromARGB(255, 177, 218, 209)
                            : const Color.fromARGB(255, 219, 146, 215),
                      ),
                      padding: const EdgeInsets.all(5),
                      child:
                          Text(((data['question_index'] as int) + 1).toString(),
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data['question'] as String,
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(height: 5),
                          Text(data['user_answer'] as String,
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 219, 146, 215),
                              )),
                          Text(data['correct_answer'] as String,
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 177, 218, 209),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
