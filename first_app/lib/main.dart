import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "First App",
      home: SafeArea(child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyNavBar(
            title: Text(
              "My First App",
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          const Expanded(child: Center(child: Text("First App"))),
        ],
      ),
    );
  }
}

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key, required this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(color: Colors.lightBlueAccent),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: "Nav Button",
          ),
          Expanded(child: Center(child: title)),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: "Search Button",
          ),
        ],
      ),
    );
  }
}
