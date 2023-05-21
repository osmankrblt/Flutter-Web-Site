import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Welcome to Example Electicty",
              style: TextStyle(
                fontFamily: "Roboto Mono",
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
          Container(
            child: Text(
              "Welcome to Example Electicty",
              style: TextStyle(
                fontFamily: "Roboto Mono",
                fontSize: 50,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
