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
              leading: Icon(
                Icons.account_box,
              ),
              title: Text(
                "Teste Card",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                "Test Card",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ButtonBar(
                children: [
                  FlatButton(
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("You touched me!"),
                        backgroundColor: Colors.blueAccent,
                      ));
                    },
                    child: Text(
                      "Take",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("You touched me!"),
                        backgroundColor: Colors.blueAccent,
                      ));
                    },
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
