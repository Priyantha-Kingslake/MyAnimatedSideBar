import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 120, 97, 71),
      child: const Center(
        child: Text("Settings"),
      ),
    );
  }
}
