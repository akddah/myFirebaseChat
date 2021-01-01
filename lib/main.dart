import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'chat.dart';
import 'const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("user1"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Chat(
                    peerAvatar:
                        "https://pbs.twimg.com/profile_images/421753235662049280/bkWR98ap_400x400.jpeg",
                    peerId: "user2",
                    id: "user1",
                  ),
                ));
              },
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              child: Text("user2"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Chat(
                    peerAvatar:
                        "https://images.akhbarelyom.com//images/images/medium/20190903031018574.jpg",
                    id: "user2",
                    peerId: "user1",
                  ),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
