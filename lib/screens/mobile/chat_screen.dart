import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // chat appbar
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
              ),
              // radius: 20.0,
            ),
            const SizedBox(width: 15),
            Text(
              info[0]['name'].toString(),
            ),
          ],
        ),
        // title: Text(
        //   info[0]['name'].toString(),
        // ),
        centerTitle: false,
        actions: [
          // video call
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
            ),
          ),

          // audio call
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),

          // more
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      // chat body
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 22,
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      // file icon
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                        size: 22,
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      // money icon
                      Icon(
                        Icons.money,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ],
                  ),
                ),
                hintText: "Type a message!",
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.solid,
                  ),
                ),
                contentPadding: const EdgeInsets.all(15)),
          ),
        ],
      ),
    );
  }
}
