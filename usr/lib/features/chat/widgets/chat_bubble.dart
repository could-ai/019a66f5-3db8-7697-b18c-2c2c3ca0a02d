import 'package:flutter/material.dart';
import 'package:couldai_user_app/main.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isFromLyra;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isFromLyra,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isFromLyra ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isFromLyra
                ? [AppColors.royalBlue.withOpacity(0.5), AppColors.deepIndigo.withOpacity(0.8)]
                : [AppColors.violetGlow, AppColors.rose],
          ),
          borderRadius: BorderRadius.circular(20.0),
           boxShadow: [
            BoxShadow(
              color: AppColors.violetGlow.withOpacity(0.2),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             if (isFromLyra)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'LYRA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.cyan.withOpacity(0.8),
                    fontSize: 12,
                  ),
                ),
              ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
