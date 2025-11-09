import 'dart:ui';
import 'package:couldai_user_app/features/chat/chat_screen.dart';
import 'package:couldai_user_app/features/dream_log/dream_log_screen.dart';
import 'package:couldai_user_app/features/puzzle/puzzle_screen.dart';
import 'package:couldai_user_app/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:couldai_user_app/main.dart';

class ShellScreen extends StatefulWidget {
  const ShellScreen({super.key});

  @override
  State<ShellScreen> createState() => _ShellScreenState();
}

class _ShellScreenState extends State<ShellScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ChatScreen(),
    DreamLogScreen(),
    PuzzleScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              _buildNavItem(Icons.chat_bubble_outline, 'Chat', 0),
              _buildNavItem(Icons.book_outlined, 'Dream Log', 1),
              _buildNavItem(Icons.diamond_outlined, 'Puzzle', 2),
              _buildNavItem(Icons.settings_outlined, 'Settings', 3),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.black.withOpacity(0.3),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: isSelected ? AppColors.violetGlow : Colors.white54,
        shadows: isSelected
            ? [
                Shadow(
                  color: AppColors.violetGlow.withOpacity(0.8),
                  blurRadius: 15.0,
                ),
                Shadow(
                  color: AppColors.cyan.withOpacity(0.6),
                  blurRadius: 10.0,
                ),
              ]
            : [],
      ),
      label: label,
    );
  }
}
