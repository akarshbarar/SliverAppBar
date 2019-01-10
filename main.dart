import "package:flutter/material.dart";
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SliverAppBar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool x=true;
  bool y=true;
  bool z=true;
  void xxx(){
    setState(() {
      x=!x;
    });
  }
  void yyy(){
    setState(() {
      y=!y;
    });
  }
  void zzz(){
    setState(() {
      z=!z;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: z,
            pinned: x,
            floating: y,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("CodeCave"),
            ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.fiber_pin),tooltip: "Pinned",onPressed: xxx,),
              IconButton(icon: Icon(Icons.flare),tooltip: "Floating",onPressed: yyy,),
              IconButton(icon: Icon(Icons.center_focus_strong),tooltip: "Center Text",onPressed: zzz,),
            ],
          ),
          SliverFillRemaining(
            child: Center(
              child: Text("DEMO"),
            ),
          ),
        ],
      ),
    );
  }
}

