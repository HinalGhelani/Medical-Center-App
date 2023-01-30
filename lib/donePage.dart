import 'package:flutter/material.dart';

class donePage extends StatefulWidget {
  const donePage({Key? key}) : super(key: key);

  @override
  State<donePage> createState() => _donePageState();
}

class _donePageState extends State<donePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("build/medicalApp/done.gif"),
            const Text(
              "Your Order has been Succesful!!",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
