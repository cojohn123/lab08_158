import 'package:flutter/material.dart';
import 'package:lab08_158/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab08_158 Navugation"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("This is First Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ));
              },
              child: const Text("หน้าถัดไป"),
            )
          ],
        ),
      ),
    );
  }
}
