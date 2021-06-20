import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls_screen.dart';
import 'package:whatsapp/pages/camera_screens.dart';
import 'package:whatsapp/pages/chats_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';

class WhatsappHomepage extends StatefulWidget {
  const WhatsappHomepage({key}) : super(key: key);

  @override
  _WhatsappHomepageState createState() => _WhatsappHomepageState();
}

class _WhatsappHomepageState extends State<WhatsappHomepage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "CHATS",
            ),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            )
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: new Icon(Icons.more_vert),
          )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatsScreen(),
          new StatusScreen(),
          new CallsScreen()
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            debugPrint('open chats');
          }),
    );
  }
}
