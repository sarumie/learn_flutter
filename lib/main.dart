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
            child: ListTile(leading: Image.network("https://i.ibb.co/n8L3zXT/original-drawn-by-cheli-kso1564-d7a8be2c33774266e7f7b9ad20f5e880.png"),
              title: Text(
                "Anime", 
                maxLines: 2,
                overflow: TextOverflow.ellipsis
              ),
              subtitle: Text(
                "Sebenarnya kalian hanya ninggen tidak berguna karena watashi tidak akan memaafkan kamu dan kamu harus mennyembah aku",
                maxLines: 2,
                overflow: TextOverflow.ellipsis
              ),
            ),
          );
        },
      ),
    );
  }
}
