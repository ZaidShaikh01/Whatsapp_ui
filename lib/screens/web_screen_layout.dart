import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: SingleChildScrollView(
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
                Expanded(child: ChatList()),
                // Message input box
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        color: dividerColor,
                      )),
                      color: chatBarMessage),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type Message',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, style: BorderStyle.none),
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
