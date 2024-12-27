import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebSearchbar extends StatelessWidget {
  const WebSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        //we need border in the bottom disguish between the bar and the chats
        border: Border(bottom: BorderSide(color: dividerColor)),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefix: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          hintText: 'Search or Start a new chat',
          hintStyle: const TextStyle(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),

          //for the padding in side the searchbar
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
