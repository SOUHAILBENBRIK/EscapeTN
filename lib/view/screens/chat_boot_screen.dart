import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/widgets/back_button.dart';

class ChatBootScreen extends StatefulWidget {
  const ChatBootScreen({super.key});

  @override
  State<ChatBootScreen> createState() => _ChatBootScreenState();
}

class _ChatBootScreenState extends State<ChatBootScreen> {
  List<ChatMessage> messages = [];
  ChatUser currentUser =
      ChatUser(id: "0", firstName: "souhail", lastName: "ben brik");
  ChatUser chatBoot = ChatUser(id: "1", firstName: "Gemini", lastName: "");
  final Gemini gemini = Gemini.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonWidget(
          onPress: () {
            Navigator.pushReplacementNamed(context, AppRoutes.mainScreen);
          },
        ),
        centerTitle: true,
        title: Text("Chatboot"),
      ),
      body: buildUi(context),
    );
  }

  buildUi(BuildContext context) {
    return DashChat(
      /* inputOptions: InputOptions(trailing: [
        IconButton(
          icon: Icon(
            Icons.image,
            color: Constants.mainColor,
          ),
          onPressed: () {
            _sendImageMessages();
          },
        )
      ]),*/
      inputOptions: InputOptions(
        alwaysShowSend: true,
      ),
      currentUser: currentUser,
      onSend: _send,
      messages: messages,
    );
  }

  void _sendImageMessages() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    print(file?.length());
    if (file != null) {
      ChatMessage message = ChatMessage(
          user: currentUser,
          createdAt: DateTime.now(),
          text: "Where is this place",
          medias: [
            ChatMedia(url: file.path, fileName: "", type: MediaType.image)
          ]);
      _send(message);
    }
  }

  void _send(ChatMessage chat) {
    setState(() {
      messages = [chat, ...messages];
    });
    try {
      String question = chat.text;
      /*List<Uint8List>? images;
      if (chat.medias?.isNotEmpty ?? false) {
        print(chat.medias!.first.url);
        images = [File(chat.medias!.first.url).readAsBytesSync()];
      }*/

      gemini.streamGenerateContent(question).listen((event) {
        ChatMessage? lastMessage = messages.firstOrNull;
        if (lastMessage != null && lastMessage.user == chatBoot) {
          lastMessage = messages.removeAt(0);
          String response = event.content?.parts?.fold("", (previous, current) {
                return "$previous ${current.text}";
              }) ??
              "";
          lastMessage.text += response;
          setState(() {
            messages = [lastMessage!, ...messages];
          });
        } else {
          String response = event.content?.parts?.fold("", (previous, current) {
                return "$previous ${current.text}";
              }) ??
              "";
          ChatMessage message = ChatMessage(
              user: chatBoot, createdAt: DateTime.now(), text: response);
          setState(() {
            messages = [message, ...messages];
          });
        }
      });
    } catch (e) {
      print(e);
    }
  }
}
