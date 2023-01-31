import 'package:flutter/material.dart';
import 'package:editable_richtext/editable_richtext.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: true, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Image.network(
          "https://static.vecteezy.com/system/resources/previews/010/802/763/original/abstract-wavy-pattern-background-in-purple-blue-and-cyan-gradient-can-be-used-for-tech-sensed-websites-banners-and-posters-vector.jpg",
          fit: BoxFit.cover),
      const Positioned.fill(
          child: Padding(
              padding: EdgeInsets.all(kToolbarHeight),
              child: EditableRichText()))
    ]);
  }
}
