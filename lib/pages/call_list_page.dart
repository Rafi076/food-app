import 'package:flutter/material.dart';

class CallListPage extends StatelessWidget {
  const CallListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Call List"),
      ),
      body: const Center(
        child: Text("Call list page content"),
      ),
    );
  }
}
