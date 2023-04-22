import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;

  ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data!['Flutter']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.orange),
                child: const Center(
                  child: Text('Screen 2'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
