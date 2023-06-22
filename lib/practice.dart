import 'package:first_flutter_application/pages/page1.dart';
import 'package:first_flutter_application/pages/page2.dart';
import 'package:first_flutter_application/pages/page3.dart';
import 'package:first_flutter_application/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LCMS"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60, //default 60, height of appbar
        toolbarOpacity: 1, //clearity of appbar
        elevation: 10, //shadow
        actions: [
          IconButton(
              onPressed: () {
                print("My Account");
              },
              icon: Icon(Icons.account_balance)),
          IconButton(
              onPressed: () {
                print("My Camera");
              },
              icon: Icon(Icons.add_a_photo)),
          IconButton(
              onPressed: () {
                print("My Bug");
              },
              icon: Icon(Icons.adb_rounded)),
          IconButton(
              onPressed: () {
                print("My Location");
              },
              icon: Icon(Icons.add_location_alt)),
          IconButton(
              onPressed: () {
                print("My Work");
              },
              icon: Icon(Icons.work)),
        ],
      ),
    );
  }
}

class prac extends StatelessWidget {
  const prac({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: 200.0,
            color: Color.fromARGB(255, 89, 158, 86),
            child: const Center(
              child: Text("Hello"),
            ),
          ),
        ),
      ),
    );
  }
}

class prac2 extends StatelessWidget {
  const prac2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My AppBar"),
        titleSpacing: 2,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text(
                "Ruhul Amin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "ruhulamin@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_outlined),
              title: const Text("Your Account"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const AboutListTile(
              icon: Icon(Icons.abc_outlined),
              child: Text("About Us"),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'My First Flutter Application',
              applicationVersion: '1.0.1',
              applicationLegalese: '© 2023 bit',
              aboutBoxChildren: [
                //Content goes here...
              ],
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "This is end drawer",
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Close Drawer",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //MySnackBar("Floating Action Button", context);
        },
      ),
    );
  }
}

class prac3 extends StatelessWidget {
  const prac3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  Text(
                    "Icon",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.ac_unit),
                  Text(
                    "Icon2",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class prac4 extends StatelessWidget {
  const prac4({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> text = ["Hello", "Hello1", "Hello2", "Hello3"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [for (var i in text) Text(i.toString())],
        ),
      ),
    );
  }
}

class prac5 extends StatelessWidget {
  const prac5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(
              "https://www.wallpapers13.com/wp-content/uploads/2016/02/Natural-Nature-4K-Wallpaper-1680x1050.jpg",
            ),
          ),
        ),
      ),
    );
  }
}

class prac6 extends StatelessWidget {
  const prac6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("images/image-4.jpg"),
          ),
        ),
      ),
    );
  }
}

class prac7 extends StatelessWidget {
  const prac7({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/image-3.jpg"),
              radius: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}

class prac8 extends StatelessWidget {
  const prac8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

class prac9 extends StatelessWidget {
  const prac9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: (Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 3,
            color: Colors.indigo,
            child: const Center(
              child: Text("Media Query"),
            ),
          )),
        ),
      ),
    );
  }
}

class prac10 extends StatelessWidget {
  const prac10({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(
        color: Colors.blueGrey,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(
          image: AssetImage("images/image-5.jpg"),
        ),
      ),
      Container(
        color: Colors.lightGreen,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(
          image: AssetImage("images/image-4.jpg"),
        ),
      ),
      Container(
        color: Colors.purple,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(
          image: AssetImage("images/image-3.jpg"),
        ),
      ),
      Container(
        color: Colors.blueAccent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(
          image: AssetImage("images/image-2.jpg"),
        ),
      ),
      Container(
        color: Colors.orangeAccent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Image(
          image: AssetImage("images/image-1.jpg"),
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(child: LiquidSwipe(pages: pages)),
    );
  }
}

class prac11 extends StatelessWidget {
  const prac11({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              ),
              Container(
                color: Colors.green,
                height: 250,
                width: 250,
              ),
              Container(
                color: Colors.greenAccent,
                height: 250,
                width: 250,
              ),
              Container(
                color: Colors.blueGrey,
                height: 250,
                width: 250,
              ),
              Container(
                color: Colors.red,
                height: 250,
                width: 250,
              ),
              Container(
                color: Colors.lime,
                height: 250,
                width: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class prac12 extends StatelessWidget {
  const prac12({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: const Center(
                  child: Text(
                    "First Grid", style: TextStyle(color: Colors.white),
                  ),
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
                child: const Center(
                  child: Text(
                    "Second Grid", style: TextStyle(color: Colors.white),
                  ),
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
                child: const Center(
                  child: Text(
                    "Third Grid", style: TextStyle(color: Colors.white),
                  ),
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
                child: const Center(
                  child: Text(
                    "Fourth Grid", style: TextStyle(color: Colors.white),
                  ),
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
                child: const Center(
                  child: Text(
                    "Fifth Grid", style: TextStyle(color: Colors.white),
                  ),
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
                child: const Center(
                  child: Text(
                    "Sixth Grid", style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}

class prac13 extends StatelessWidget {
  const prac13({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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

class prac14 extends StatelessWidget {
  const prac14({super.key});
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          actions: [],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Tab 1',
                icon: Icon(Icons.tab_unselected),
              ),
              Tab(
                text: 'Tab 2',
                icon: Icon(Icons.flip_to_back_sharp),
              ),
              Tab(
                text: 'Tab 3',
                icon: Icon(Icons.account_balance_sharp),
              ),
              Tab(
                text: 'Tab 4',
                icon: Icon(Icons.account_circle_outlined),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
            Home(),
          ],
        ),
      ),
    );
  }
}

class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});

  @override
  State<MyWidget1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget1> {

  var _currentState = 1;
  final pages = [
    Page1(),
    Page2(),
    Page3(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentState,
        items: const [
          BottomNavigationBarItem(
            //backgroundColor: Color.fromARGB(255, 51, 71, 88),
            backgroundColor: Colors.amber,
            label: "Message",
            icon: Icon(Icons.add_box_outlined),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            label: "Message2",
            icon: Icon(Icons.ac_unit_outlined),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            label: "Message3",
            icon: Icon(Icons.access_alarms_outlined),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: "Message4",
            icon: Icon(Icons.accessibility_outlined),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.teal,
            label: "Message5",
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            label: "Message5",
            icon: Icon(Icons.list),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentState = index;
          });
        },
      ),
      body: pages[_currentState],
    );
  }
}


