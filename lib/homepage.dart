import 'package:flutter/material.dart';
import 'listpage.dart';
import 'model.dart';
import 'network.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Data();
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 10,
          margin: const EdgeInsets.all(8),
        ),
        title: const Text(
          '',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: data.getData(),
        builder: (context, snapshot) => snapshot.data != null
            ? ListPage(sekolah: snapshot.data as List<Sekolah>)
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
