import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              SizedBox(
                width: 300,

                child: Card(
                  color: Colors.red,
                  elevation: 10,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                    side: BorderSide(width: 3,color: Colors.yellow),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Toplam Puan", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0), )),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Icon(Icons.star, color: Colors.yellow,),
                              Text("150", style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 40.0)),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),

    );
  }
}
