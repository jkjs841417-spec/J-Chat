
import 'package:flutter/material.dart';

void main() {
  runApp(const JChatApp());
}

class JChatApp extends StatelessWidget {
  const JChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'J-Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF101827),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6759E8),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 105,
                  width: 105,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6759E8),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const Icon(
                    Icons.chat_bubble_rounded,
                    size: 55,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'J-Chat',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Connect. Chat. Share.',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 45),
                const Text(
                  'Your world, your conversations.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                  ),
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6759E8),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'A new way to stay connected.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white38,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
