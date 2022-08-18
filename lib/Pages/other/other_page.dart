import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_4_davomi/Pages/third/third_page.dart';

class OtherPage extends StatefulWidget {
  final int? data;
  static const String route = '/other';
  const OtherPage({super.key, this.data});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Other page")),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.data.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ThirdPage.route);
            },
            color: Colors.red,
            child: const Text("Third"),
          )
        ],
      )),
    );
  }
}
