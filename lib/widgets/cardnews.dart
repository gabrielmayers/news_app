import 'package:flutter/material.dart';

class CardNews extends StatefulWidget {
  @override
  _CardNewsState createState() => _CardNewsState();
}

class _CardNewsState extends State<CardNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.pinkAccent,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: Icon(Icons.accessibility_rounded),
              title: Text(
                "Teste Card",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Test Card"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ButtonBar(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Take",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Away",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
