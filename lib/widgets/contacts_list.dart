import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Leaving the top part
      padding: EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(

                // We need to convert it inot the string
                info[index]['name'].toString(),
                
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:6.0),
                child: Text(info[index]['message'].toString() , style: TextStyle(fontSize: 15),),),
              )
            ;
          }),
    );
  }
}
