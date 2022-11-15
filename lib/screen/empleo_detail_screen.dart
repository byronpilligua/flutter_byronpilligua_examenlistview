
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_byronpilligua_examenlistview/model/data.dart';

class DetailScreen extends StatelessWidget {
  final Empleo empleo;
  TextStyle lsize = TextStyle(fontSize: 16);
  BoxDecoration linesize = BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 2, color: Color.fromARGB(255, 253, 2, 64)),
    ),
  );

  DetailScreen({Key? key, required this.empleo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(empleo.brand),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Text(
                'Empleo: ' + empleo.model,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(empleo.brand, style: lsize),
                  Text(
                    empleo.manufacturingDate.toString().split(' ')[0],
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 92, 91, 91)),
                  ),
                ],
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Text(empleo.description, style: lsize)
          ],
        ),
      ),
    );
  }
}