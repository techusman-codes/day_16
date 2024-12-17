import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.grey,
            title: const Text('Title'),
            content: const Text('content, more info'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cnacel'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple,
          onPressed: _showDialog,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Show Dialog",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
