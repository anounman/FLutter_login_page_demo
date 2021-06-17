import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isModeDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
        drawer: Drawer(
        
        child: ListView(
        padding: EdgeInsets.zero,
      children: <Widget>[
        
        DrawerHeader(
        
        padding: EdgeInsets.zero,
        child: Material(
            child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text("Anksush Das"),
            accountEmail: Text("ankush.pentester@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://instagram.fbom16-1.fna.fbcdn.net/v/t51.2885-19/s320x320/176156930_146132740785483_414946916077026117_n.jpg?tp=1&_nc_ht=instagram.fbom16-1.fna.fbcdn.net&_nc_ohc=j0dHh2AN25IAX-wCR_b&tn=gmZgn2Iptv5enfrt&edm=ABfd0MgBAAAA&ccb=7-4&oh=4d1deab21c8ca0830fb260e0b3b3d99a&oe=60D2EE73&_nc_sid=7bff83"),
            )
            ,),
            
        ),
        
        ),
        SizedBox(
          height: 5
        ),
        ListTile(
          leading: Icon(
          CupertinoIcons.home,
          color: Colors.blue,),
          title: Text("Home" , style: TextStyle(fontSize: 20),),
        )
      ])),
      
        appBar: AppBar(
            title: Text("Test Login Page"),
            
          ),
      
        ))
    );
  }
}