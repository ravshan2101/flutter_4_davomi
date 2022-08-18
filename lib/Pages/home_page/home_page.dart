import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_4_davomi/Pages/other/other_page.dart';

class HomePage extends StatefulWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data.toString(),
            style: Theme.of(context).textTheme.headline2,
          ),
          MaterialButton(
            onPressed: (() async {
              data = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OtherPage(
                        data: 456,
                      )));
              setState(() {});
            }),
            color: Colors.red,
            child: Text('Other $data'),
          )
        ],
      )),
    );
  }
}
