import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //through mediaquery we are getting the height and width of the screen and then adjusting it according to our own preference, to make it responsive
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
              right: BorderSide(
            color: dividerColor,
          )),
          color: webAppBarColor),
      child: Row(
        //for spacing between the avatar and iconbuttons
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
            ),
            radius: 20,
          ),

          //wrapping the iconbutton in the row because we want space between the avatar and the icons. we are not using sized box because it gives error on different screen sizes.
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
