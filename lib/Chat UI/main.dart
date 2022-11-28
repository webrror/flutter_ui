import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    darkTheme: ThemeData(
        primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.grey[850]),
    home: const Chats(),
    debugShowCheckedModeBanner: false,
  ));
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('John Doe'),
      ),
      body: Stack(
        children: [
          ListView(
            reverse: true,
            padding: const EdgeInsets.only(bottom: 120),
            children: [
              getReceiverView(
                  ChatBubbleClipper5(type: BubbleType.receiverBubble),
                  context,
                  "Donec eleifend sapien ut sapien finibus hendrerit. Pellentesque semper nunc lacus, ac elementum est cursus quis. Duis nec lorem sapien."),
              getReceiverView(
                  ChatBubbleClipper5(type: BubbleType.receiverBubble),
                  context,
                  "Give me 5"),
              getSenderView(ChatBubbleClipper5(type: BubbleType.sendBubble),
                  context, 'Please review and revert back'),
              getSenderView(
                  ChatBubbleClipper5(type: BubbleType.sendBubble),
                  context,
                  'In dapibus facilisis massa, a porta neque ultricies id. Sed suscipit enim quis neque congue feugiat. Curabitur eget consectetur erat. Nam dapibus ultrices vulputate. Nunc id arcu id urna auctor interdum sit amet sit amet tortor.'),
              getSenderView(ChatBubbleClipper5(type: BubbleType.sendBubble),
                  context, 'Sending you some data'),
              getReceiverView(
                  ChatBubbleClipper5(type: BubbleType.receiverBubble),
                  context,
                  "I'm alright"),
              getSenderView(ChatBubbleClipper5(type: BubbleType.sendBubble),
                  context, 'Hope you are doing well'),
              getReceiverView(
                  ChatBubbleClipper5(type: BubbleType.receiverBubble),
                  context,
                  'Hi Sender'),
              getSenderView(ChatBubbleClipper5(type: BubbleType.sendBubble),
                  context, 'Hello John!'),
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 25),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[50],
                      prefixIcon: const Icon(Icons.emoji_emotions_rounded),
                      suffixIcon: const Icon(Icons.send_rounded),
                      hintText: 'Send message...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ))
        ],
      ),
    );
  }
}

getSenderView(CustomClipper clipper, BuildContext context, String message) =>
    ChatBubble(
      clipper: clipper,
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(top: 20, right: 10),
      backGroundColor: Colors.blue,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

getReceiverView(CustomClipper clipper, BuildContext context, String message) =>
    ChatBubble(
      clipper: clipper,
      backGroundColor: Colors.grey[200],
      margin: const EdgeInsets.only(top: 20, left: 10),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            message,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
