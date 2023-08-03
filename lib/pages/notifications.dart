import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 134, 111, 161),
      child: const Center(
        child: Text("Notifications"),
      ),
    );
  }
}
