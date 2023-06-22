import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
      body: ListView(
        children: [
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: [

          //       ],
          //     ),
          //   ),
          // ),

          Container(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/image-4.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: double.infinity,
                    width: 100,
                  ),
                  Container(
                    child: Image.asset("images/image-5.jpg"),
                    color: Colors.blueGrey,
                    height: double.infinity,
                    width: 100,
                  ),
                  Container(
                    child: Image.asset("images/image-3.jpg"),
                    color: Colors.indigoAccent,
                    height: double.infinity,
                    width: 100,
                  ),
                  Container(
                    child: Image.asset("images/image-2.jpg"),
                    color: Colors.teal,
                    height: double.infinity,
                    width: 100,
                  ),
                  Container(
                    child: Image.asset("images/image-1.jpg"),
                    color: Colors.lime,
                    height: double.infinity,
                    width: 100,
                  ),
                  Container(
                    color: Colors.tealAccent,
                    height: double.infinity,
                    width: 100,
                  ),
                ],
              ),
            ),
          ),

          Container(
            color: Colors.amberAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.blueGrey,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.greenAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.indigoAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.lightGreenAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.pinkAccent,
            height: 250,
            width: 250,
          ),
          Container(
            color: Colors.purpleAccent,
            height: 250,
            width: 250,
          ),
        ],
      ),
    );
  }
}