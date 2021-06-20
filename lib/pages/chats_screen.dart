import 'package:flutter/material.dart';
import 'package:whatsapp/models/model_chat.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  ChatModel chatModel = new ChatModel();

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: dummyData == null ? 0 : dummyData.length,
        itemBuilder: (BuildContext context, index) {
          return new Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(dummyData[index].pic),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text(
                      dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[index].time,
                      style: TextStyle(color: Colors.grey, fontSize: 13.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummyData[index].message,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
