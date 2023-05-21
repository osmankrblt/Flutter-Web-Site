import 'package:flutter/material.dart';

class myFooter extends StatelessWidget {
  const myFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
              ),
              Text(
                "example@example.com",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
              Text(
                "123456789",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.telegram,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
