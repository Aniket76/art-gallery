import 'package:flutter/material.dart';

class Uploads extends StatelessWidget {
  const Uploads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> data = [
      'assets/upload_page/img_(1).jpeg',
      'assets/upload_page/img_(2).jpeg',
      'assets/upload_page/img_(3).jpeg',
      'assets/upload_page/img_(4).jpeg',
      'assets/upload_page/img_(5).jpeg',
      'assets/upload_page/img_(6).jpeg',
      'assets/upload_page/img_(1).jpeg',
      'assets/upload_page/img_(2).jpeg',
      'assets/upload_page/img_(3).jpeg',
      'assets/upload_page/img_(4).jpeg',
      'assets/upload_page/img_(5).jpeg',
      'assets/upload_page/img_(6).jpeg',
    ];

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),

      child: GridView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: GridTile(
              child: Image.asset(data[index]),
            ),
          );
        },
      ),
    ));
  }
}
