import 'package:flutter/material.dart';
import 'package:slidy_api_list_object/app/pages/esquema/esquema_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primaryColor: Color(0xff035698),
      ),
      home: EsquemaModule(),
    );
  }
}
