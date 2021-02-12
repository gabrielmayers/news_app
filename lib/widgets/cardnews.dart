import 'package:flutter/material.dart';

class CardNews extends StatefulWidget {
  @override
  _CardNewsState createState() => _CardNewsState();
}

class _CardNewsState extends State<CardNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.people),
                CircleAvatar(
                  backgroundImage: AssetImage("images/eu.jpg"),
                ),
                Text("Gabriel Mayer")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
