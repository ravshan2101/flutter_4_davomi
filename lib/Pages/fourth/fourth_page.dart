import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_4_davomi/Pages/home_page/home_page.dart';
import 'package:flutter_4_davomi/Pages/other/other_page.dart';

class FourhPage extends StatefulWidget {
  static const String route = '/fourth';
  const FourhPage({Key? key}) : super(key: key);

  @override
  State<FourhPage> createState() => _FourhPageState();
}

class _FourhPageState extends State<FourhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fourth Page')),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
              OtherPage.route, (ModalRoute.withName(HomePage.route)));
        },
        color: Colors.red,
        child: const Text('Other'),
      )),
    );
  }
}
