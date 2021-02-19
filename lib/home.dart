import 'package:flutter/material.dart';
import 'widgets/cardnews.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FontWeight txtWorld = FontWeight.normal;
  FontWeight txtBusiness = FontWeight.normal;
  FontWeight txtPolitics = FontWeight.normal;
  FontWeight txtTech = FontWeight.normal;
  FontWeight txtScience = FontWeight.normal;
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
                    child: GestureDetector(
                      child: Text(
                        "World",
                        style: TextStyle(fontWeight: txtWorld),
                      ),
                      onTap: () {
                        setState(() {
                          txtBusiness = FontWeight.normal;
                          txtPolitics = FontWeight.normal;
                          txtTech = FontWeight.normal;
                          txtScience = FontWeight.normal;
                          txtWorld = FontWeight.bold;
                        });
                        print("CLICADO!");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: GestureDetector(
                      child: Text(
                        "Business",
                        style: TextStyle(fontWeight: txtBusiness),
                      ),
                      onTap: () {
                        setState(() {
                          txtPolitics = FontWeight.normal;
                          txtTech = FontWeight.normal;
                          txtScience = FontWeight.normal;
                          txtWorld = FontWeight.normal;
                          txtBusiness = FontWeight.bold;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: GestureDetector(
                      child: Text(
                        "Politics",
                        style: TextStyle(fontWeight: txtPolitics),
                      ),
                      onTap: () {
                        setState(() {
                          txtTech = FontWeight.normal;
                          txtScience = FontWeight.normal;
                          txtWorld = FontWeight.normal;
                          txtBusiness = FontWeight.normal;
                          txtPolitics = FontWeight.bold;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: GestureDetector(
                      child: Text(
                        "Tech",
                        style: TextStyle(fontWeight: txtTech),
                      ),
                      onTap: () {
                        setState(() {
                          txtScience = FontWeight.normal;
                          txtWorld = FontWeight.normal;
                          txtBusiness = FontWeight.normal;
                          txtPolitics = FontWeight.normal;
                          txtTech = FontWeight.bold;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 12, 8),
                    child: GestureDetector(
                      child: Text(
                        "Science",
                        style: TextStyle(fontWeight: txtScience),
                      ),
                      onTap: () {
                        setState(() {
                          txtWorld = FontWeight.normal;
                          txtBusiness = FontWeight.normal;
                          txtPolitics = FontWeight.normal;
                          txtTech = FontWeight.normal;
                          txtScience = FontWeight.bold;
                        });
                      },
                    ),
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
