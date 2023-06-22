import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, "/page1", (route) => false);
              }, 
              icon: Icon(Icons.account_balance_sharp),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, "/page2", (route) => false);
              }, 
              icon: Icon(Icons.add_home_work_sharp),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, "/page3", (route) => false);
              }, 
              icon: Icon(Icons.add_reaction_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, "/page4", (route) => false);
              }, 
              icon: Icon(Icons.account_circle),
            ),
          ],
          title: Text("My App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Container(
                color: Colors.blueAccent,
                height: 250,
                width: 250,
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("First Grid"),
                ),
              ),
              Container(
                color: Colors.green,
                height: 250,
                width: 250,
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("Second Grid"),
                ),
              ),
              Container(
                color: Colors.greenAccent,
                height: 250,
                width: 250,
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("Third Grid"),
                ),
              ),
              Container(
                color: Colors.lightBlue,
                height: 250,
                width: 250,
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("Fourth Grid"),
                ),
              ),
              Container(
                color: Colors.red,
                height: 250,
                width: 250,
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("Fifth Grid"),
                ),
              ),
              Container(
                color: Colors.lime,
                height: 250,
                width: 250,
                child: TextButton(
                  onPressed: (){}, 
                  child: Text("Sixth Grid"),
                ),
              ),
            ],
          ),
        ),
    );
  }
}