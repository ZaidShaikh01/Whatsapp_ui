import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/my_message_card.dart';
import 'package:whatsapp_ui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          // Return my message
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return SenderMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
        // Sender message card
      },
    );
  }
}
