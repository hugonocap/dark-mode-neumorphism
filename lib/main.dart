import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Container(
            // ignore: sort_child_properties_last
            child: Icon(
              Icons.apple,
              color: Colors.grey.shade300,
              size: 80,
            ),
            padding: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                //* bottom right shadow is darker
                const BoxShadow(
                  color: Colors.black,
                  offset: Offset(4, 4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),

                //* bottom left shadow is lighter
                BoxShadow(
                  color: Colors.grey.shade800,
                  offset: const Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
