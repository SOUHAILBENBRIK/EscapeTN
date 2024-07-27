import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';

class ChatBootScreen extends StatelessWidget {
  const ChatBootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildUi(context),
    );
  }

  buildUi(BuildContext context) {
    ChatUser currentUser =
        ChatUser(id: "0", firstName: "souhail", lastName: "ben brik");
    ChatUser chatBoot = ChatUser(id: "1", firstName: "Gemini", lastName: "");
    return DashChat(
      currentUser: currentUser,
      onSend: _send,
      messages: [],
    );
  }

  void _send(chat) {}
}
