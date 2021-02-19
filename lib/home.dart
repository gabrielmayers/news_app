import 'package:flutter/material.dart';
import 'widgets/cardnews.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Center(
          child: Text("News",
              style: GoogleFonts.bigshotOne(
                  color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: Text(
                      "World",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: Text("Business"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: Text("Politics"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: Text("Tech"),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: Text("Science"),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardNews(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardNews(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CardNews(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
