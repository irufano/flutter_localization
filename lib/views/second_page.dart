import 'package:flutter/material.dart';
import 'package:flutter_localization/locale/app_localization.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalization.of(context).secondPage)
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
          )
        ],
      ),
    );
  }
}
