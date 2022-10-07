import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';
import 'package:whatsapp_clone/models/users.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class ChatScreen extends StatelessWidget {
  String name;
  ChatScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          name.toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const ChatList(),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 50,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          //padding: const EdgeInsets.only(left: 16, right: 8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
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
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const[
                          Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.money,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    hintText: 'Type a message!',
                    hintStyle: const TextStyle(color: Colors.white,fontSize: 15),
                    border: const OutlineInputBorder(
                      borderSide:BorderSide(
                        width: 0,
                        style: BorderStyle.none
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(10)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
