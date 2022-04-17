import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Learn Flutter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(leading: Image.network("https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx107490-wolT0UvNSetx.png"),
              title: Text(
                "Machikado Mazoku", 
                maxLines: 1,
                overflow: TextOverflow.ellipsis
              ),
              subtitle: Text(
                "When Yuuko Yoshida wakes up one morning to discover that she’s sprouted horns and a tail, she learns something that her mother has been meaning to tell her. You know that battle between the Light and Dark that’s been going on since the dawn of time? Well, Yuuko’s family are the bad guys.",
                maxLines: 10,
                overflow: TextOverflow.ellipsis
              ),
            ),
          );
        },
      ),
    );
  }
}
