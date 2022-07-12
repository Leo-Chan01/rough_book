import 'package:flutter/material.dart';
import 'package:test_app/screens/fidacom_get_screen.dart';
import 'package:test_app/screens/json_decoding_test_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Theme.of(context).colorScheme.primary,
              textColor: Colors.white,
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const FidacomGetScreen()))
              },
              child: const Text("Test fidacom get"),
            ),
            MaterialButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TestJsonDecode()))
              },
              color: Theme.of(context).colorScheme.primary,
              textColor: Colors.white,
              child: const Text('Test Json with fake data'),
            )
          ],
        ),
      )),
    );
  }
}
