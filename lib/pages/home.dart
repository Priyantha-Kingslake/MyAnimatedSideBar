import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 47, 176, 112),
      child: const Center(
        child: Text("Home"),
      ),
    );
  }
}
