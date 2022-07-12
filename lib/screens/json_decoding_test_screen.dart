import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestJsonDecode extends StatefulWidget {
  const TestJsonDecode({Key? key}) : super(key: key);

  @override
  State<TestJsonDecode> createState() => _TestJsonDecodeState();
}

class _TestJsonDecodeState extends State<TestJsonDecode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Json Stuff')),
    );
  }
}
