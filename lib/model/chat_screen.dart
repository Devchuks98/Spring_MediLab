import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:medical_app/model/chat_model.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/screens/widget.dart';

class ChatScreen extends StatefulWidget {
  final List<ChatMessage> initialMessages; // Add this property

  const ChatScreen({required this.initialMessages});
  @override
  _ChatScreenState createState() => _ChatScreenState(messages: initialMessages);
}

class _ChatScreenState extends State<ChatScreen> {
  String formattedTime = '';
  List<ChatMessage> messages;
  _ChatScreenState({required this.messages});

  final TextEditingController _textController = TextEditingController();

  void _handleSubmittedMessage(String text) {
    if (text.isNotEmpty) {
      setState(() {
        // Convert the UnmodifiableListView to a modifiable list (List<ChatMessage>)
        List<ChatMessage> modifiableMessages = List.from(messages);
        modifiableMessages.add(
          ChatMessage(text: text, timestamp: DateTime.now(), isMe: true),
        );
        messages =
            UnmodifiableListView(modifiableMessages); // Assign back to messages
      });
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentTime = TimeOfDay.now();
    formattedTime = '${currentTime.hour}:${currentTime.minute}';
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/doctor.jpg'),
              radius: 20,
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: 'Dr. Jane Amarachi',
                  size: 18,
                ),
                Row(
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SmallText(
                      text: "Online",
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                'assets/call.png',
                height: 25,
                color: MyColors.primaryColor,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                'assets/video.png',
                height: 25,
                color: MyColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 0.5,
                    image: AssetImage('assets/bg1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            color: Colors.white70,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
          Column(
            children: [
              Flexible(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return ListTile(
                      title: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: MyColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(3),
                              )),
                          child: SmallText(
                            text: message.text,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        message.isMe ? formattedTime : 'Other User',
                        textAlign:
                            message.isMe ? TextAlign.right : TextAlign.left,
                      ),
                      // Display timestamp here if needed
                    );
                  },
                ),
              ),
              const Divider(height: 1.0),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                ),
                child: _buildTextComposer(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(
        color: Theme.of(context).canvasColor,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey),
                //color: MyColors.primaryColor.lightPrimary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Image.asset(
                  'assets/upload-image.png',
                  color: MyColors.primaryColor,
                  height: 25,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Flexible(
              child: TextEditView(
                borderWidth: 0.5,
                controller: _textController,
                hintText: 'Type something',
                onFieldSubmitted: _handleSubmittedMessage,
                filled: false,
                autofocus: false,
                isDense: true,
                borderColor: MyColors.primaryColor,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => _handleSubmittedMessage(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
