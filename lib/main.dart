import 'package:drawer_app/NewPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] :null,
      ),
      home: new HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 :0.0,
      ),
      drawer:  new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("sahir"),
                accountEmail: new Text("sahir@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple: Colors.red,
                child: new Text("S"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple: Colors.orange,
                  child: new Text("A"),
                )
              ],
            ),
            new ListTile(
              title: new Text("page One"),
              trailing: new Icon(Icons.arrow_right),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new NewPage ("Page one")));
              },
            ),
            new ListTile(
              title: new Text("page Two"),
              trailing: new Icon(Icons.arrow_right),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new NewPage("Page Two")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("HomePage"),
        ),
      ),
    );
    
  }
}
