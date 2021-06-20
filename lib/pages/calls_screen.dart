import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({key}) : super(key: key);

  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Calls",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
