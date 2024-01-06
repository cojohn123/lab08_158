import 'package:flutter/material.dart';
import 'package:lab08_158/pages/firstpage.dart';
import 'package:lab08_158/pages/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();
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
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(labelText: "ชื่อ - นามสกุล"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("ย้อนกลับ"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(data: _controller.text),
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
