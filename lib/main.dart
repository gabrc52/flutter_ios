import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/cupertino.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.android;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Flutter iOS'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 200),
            SizedBox(height: 12),
            Text(
              'To debug and change this app:',
              style: Theme.of(context)
                  .textTheme
                  .body1
                  .copyWith(fontSize: 22, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 8),
            Text('Close it, run "flutter attach" and reopen it.'),
          ],
        ),
      ),
    );
  }
}
