import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_byronpilligua_examenlistview/model/data.dart';

import '../model/empleos_model.dart';
import 'empleo_detail_screen.dart';
import 'package:flutter_byronpilligua_examenlistview/widgets/empleo_widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}


class _ListScreenState extends State<ListScreen> {
  void longPress(Empleo empleo) {
    setState(() {
      Backend().markEmailAsRead(empleo.id);
    });
  }

  void swipe(Empleo empleo) {
    setState(() {
      Backend().deleteCarros(empleo.id);
    });
  }

  void ontap(Empleo empleo, context) {
    setState(() {
      Backend().markEmailAsRead(empleo.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen(empleo: empleo)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getEmpleos()
          .map((empleo) => EmpleoWidget(
                empleo: empleo,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}