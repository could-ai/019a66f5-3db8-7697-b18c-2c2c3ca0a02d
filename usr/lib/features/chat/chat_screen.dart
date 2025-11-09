import 'package:couldai_user_app/features/chat/widgets/chat_bubble.dart';
import 'package:couldai_user_app/main.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.deepIndigo,
              AppColors.primary,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                reverse: true,
                children: const [
                   ChatBubble(
                    text: 'The Archive never sleeps. But sometimes, it dreams.',
                    isFromLyra: true,
                  ),
                  ChatBubble(
                    text: 'Welcome. I am LYRA. The archivist of this place.',
                    isFromLyra: true,
                  ),
                   ChatBubble(
                    text: 'Hello? Is anyone there?',
                    isFromLyra: true,
                  ),
                ].reversed.toList(),
              ),
            ),
            _buildMessageInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Transmit...',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          filled: true,
          fillColor: Colors.black.withOpacity(0.2),
          suffixIcon: Icon(
            Icons.send,
            color: AppColors.violetGlow.withOpacity(0.7),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
