import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void mySnackBar(String msg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Setting clicked", context);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar("Floating Action Button clicked", context);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () => mySnackBar("Home clicked", context),
            ),
          ],
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/image.png',
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
