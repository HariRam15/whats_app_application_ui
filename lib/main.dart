import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Whatsapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  void _onItemTappedForTabBar(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xFF075E54),
                  bottom: TabBar(
                    onTap: _onItemTappedForTabBar,
                    tabs: [
                      new Tab(icon: Icon(Icons.camera)),
                      new Tab(
                        text: 'CHATS',
                      ),
                      new Tab(
                        text: 'STATUS',
                      ),
                      new Tab(
                        text: 'CALLS',
                      ),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.title),
                      Row(
                        children: [
                          Icon(Icons.search),
                          PopupMenuButton(
                            itemBuilder: (BuildContext bc) => [],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                body: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: Card(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: (Colors.white),
                              radius: 40.0,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Sid ML',
                                        style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 150.0,
                                      ),
                                      Text(
                                        '9:04 Am',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 15.0),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'Hi Ram',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: Color(0xFF075E54),
                  onPressed: _incrementCounter,

                  child: Icon(
                    Icons.message,
                  ), // This trailing comma makes auto-formatting nicer for build methods.
                ))));
  }
}
