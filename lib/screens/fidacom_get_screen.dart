import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/property.dart';

import '../models/api/dio_client.dart';

class FidacomGetScreen extends StatefulWidget {
  const FidacomGetScreen({Key? key}) : super(key: key);

  @override
  State<FidacomGetScreen> createState() => _FidacomGetScreenState();
}

class _FidacomGetScreenState extends State<FidacomGetScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get All properties'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: FutureBuilder(
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              //if error
              if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
                //if has data
              } else if (snapshot.hasData) {
                dynamic datas = snapshot.data;
                if (kDebugMode) {
                  print(datas);
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        datas.toString(),
                        style: const TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                );
              }
            }
            //waiting state
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.blue,
            ));
          }),
          future: DioClient().getProperties(),
        ),
      ),
    );
  }
}
