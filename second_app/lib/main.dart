import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Second App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: "Meniu",
          ),
          title: const Text("Second App"),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              tooltip: "Search",
              )
          ],
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
    );
  }
}