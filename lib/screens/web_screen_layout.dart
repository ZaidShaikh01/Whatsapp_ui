import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';
import 'package:whatsapp_ui/widgets/web_chat_appbar.dart';
import 'package:whatsapp_ui/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: const Column(
              children: [
                // Web profile bar
                WebProfileBar(),
                // Web search bar
                WebSearchBar(),
                ContactsList(), 
              ],
            ),
          ),
          // We neeed a container which show us the web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
                //image: AssetImage('assetName')

                ),
                child: Column(
                  children: [
                    // Chat App bar
                    WebChatAppbar(),
                    // Chat List
                    // Message input box
                  ],
                ),
          )
        ],
      ),
    );
  }
}
