import 'package:flutter/material.dart';
import 'package:flutter_localization/locale/app_localization.dart';
import 'package:flutter_localization/views/second_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppLocalization.of(context).homePage),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListTile(
              leading: RaisedButton(
                onPressed: () {
                  setState(() {
                    AppLocalization.load(Locale('en', 'US'));
                  });
                },
                child: Text('ENGLISH'),
              ),
              trailing: RaisedButton(
                onPressed: () {
                  setState(() {
                    AppLocalization.load(Locale('id', 'ID'));
                  });
                },
                child: Text('BAHASA'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              AppLocalization.of(context).heyWorld,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: RaisedButton(
              child: Text('Second Page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
