import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/flutter.png'),
                      radius: 30,
                    ),
                    title: const Text(
                      'Some Name',
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(top: 6.0),
                      child: Text(
                        'Message',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    trailing: Text(
                      DateFormat.yMMMd().format(
                        DateTime.now(),
                      ),
                      style: const TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 85,
                )
              ],
            );
          }),
    );
  }
}
