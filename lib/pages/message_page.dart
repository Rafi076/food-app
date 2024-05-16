import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message Delivery Person"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                // Older messages
                ListTile(
                  title: Text("Older message 1"),
                  subtitle: Text("Previous conversation"),
                ),
                ListTile(
                  title: Text("Older message 2"),
                  subtitle: Text("Previous conversation"),
                ),
                // New message
                ListTile(
                  title: Text("New message"),
                  subtitle: Text("Type your message here"),
                ),
              ],
            ),
          ),
          // Text field for new message
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message here...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Code to send message
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
