import 'package:flutter/material.dart';
import 'package:freshtrack/pages/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EEEE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  'assets/pic.png',
                  width: 160,
                  height: 160,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 30),
              const WelcomeTitle(),
              const SizedBox(height: 12),
              const WelcomeSubtitle(),
              const SizedBox(height: 55),
              GoToListButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'WELCOME TO\nFRESHTRACK!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w900,
          height: 1.05,
          color: Colors.black,
        ),
      ),
    );
  }
}

class WelcomeSubtitle extends StatelessWidget {
  const WelcomeSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'NEVER LET YOUR FOOD GO WASTE.',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }
}

class GoToListButton extends StatefulWidget {
  final VoidCallback onPressed;

  const GoToListButton({super.key, required this.onPressed});

  @override
  State<GoToListButton> createState() => _GoToListButtonState();
}

class _GoToListButtonState extends State<GoToListButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        height: 78,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFD78686),
            elevation: 6,
            shadowColor: Colors.black38,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: const Text(
            'GO TO LIST',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}