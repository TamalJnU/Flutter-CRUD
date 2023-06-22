import 'package:first_flutter_application/practice.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: double.infinity,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/image-1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    displayToastMessage("First Grid Clicked!!!", context);
                  }, 
                  child: const Text("First Grid")),
                ),
              ),
              Container(
                height: double.infinity,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/image-2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    displayToastMessage("Second Grid Clicked!!!", context);
                  }, 
                  child: const Text("Second Grid")),
                ),
              ),
              Container(
                height: double.infinity,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/image-3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    displayToastMessage("Third Grid Clicked!!!", context);
                  }, 
                  child: const Text("Third Grid")),
                ),
              ),
              Container(
                height: double.infinity,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/image-4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    displayToastMessage("Fourth Grid Clicked!!!", context);
                  }, 
                  child: const Text("Fourth Grid")),
                ),
              ),
              Container(
                height: double.infinity,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/image-5.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    displayToastMessage("Fifth Grid Clicked!!!", context);
                  }, 
                  child: const Text("Fifth Grid")),
                ),
              ),
              Container(
                height: double.infinity,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/image-1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    displayToastMessage("Sixth Grid Clicked!!!", context);
                  }, 
                  child: const Text("Sixth Grid")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}