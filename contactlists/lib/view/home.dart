import 'package:contactlists/view/listview_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Lists"), //app bar title
        ),
        backgroundColor: const Color.fromARGB(255, 162, 197, 225),
        body: const Center(child: ListviewWidget()));
  }
}
