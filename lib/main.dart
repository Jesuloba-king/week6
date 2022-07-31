import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 5 Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.orangeAccent,
        leading: Image.asset("assets/images/Rectangle 9.png",
          fit: BoxFit.contain,),
      actions: [
        Icon(Icons.search_sharp, size: 30,
          color: Colors.black,),
      ],
      ),
      body: Container(
        child: SingleChildScrollView(
          //the figma ui design is in scrollview, so SingleChildScrollView is used here....
          child: Column(
            children: [
              Container(//wrapped the image and text widget in a container
                margin: EdgeInsets.all(1),
                padding: EdgeInsets.all(1),
                height: 1050, width: 415,
                decoration: BoxDecoration(
                  color: Colors.white, //screen color set to transparent or white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/Rectangle 8.png", height: 90,),
                        Text("Alice Smith\n20 April at 4:20 PM",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15,
                              fontFamily: "OpenSans",
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),),
                        Icon(Icons.more_vert, color: Colors.black,),
                      ],
                    ),

                      const SizedBox(height: 2,),
                      const Text("@Samuel_Balogun We’re interested in your ideas and would be glad to build something bigger out of it. Share your ideas about features/design and we’ll bring them on to our full case. #Celebut",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400, color: Colors.black,
                        fontFamily: "OpenSans", fontSize: 15,),),

                    const SizedBox(height: 15,),
                    Row( //icons for comment, like and share was added here....
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(     // <-- TextButton
                          onPressed: () {},
                          icon: Icon(Icons.handshake_sharp,
                          ),
                          label: Text('247'),),
                        TextButton.icon(     // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.captions_bubble_fill, color: Color(0XFF7A8FA6),
                          ),
                          label: Text('57'),),
                        Icon(CupertinoIcons.square_arrow_up_fill, color: Color(0XFF7A8FA6),),
                      ],
                    ),
                    Image.asset("assets/images/Line.png", color: Color(0XFFB8C2C0),
                        height:1.1, width:456,),

                    const SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white, //screen color set to transparent or white
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/images/Rectangle 8.png", height: 90,),
                                  Text("Alice Smith\n20 April at 4:20 PM",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15,
                                        fontFamily: "OpenSans",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),),
                                  Icon(Icons.more_vert, color: Colors.black,),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(1),
                                padding: EdgeInsets.all(5),
                                height: 100, width: 357,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,),
                                child: Text("@Samuel_Balogun We’re interested in your ideas and would be glad to build something bigger out of it. Share your ideas about features/design and we’ll bring them on to our full case. #Celebut",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400, color: Colors.black,
                                    fontFamily: "OpenSans", fontSize: 15,),
                                ),
                              ),
                              Image.asset("assets/images/Chopra_Mask.png",
                                height: 300, width: 365, //height & width size gotten from Figma design....
                              ),
                            ],
                          ),
                        ),
                        Row( //icons for comment, like and share was added here....
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(     // <-- TextButton
                              onPressed: () {},
                              icon: Icon(Icons.handshake_sharp,
                              ),
                              label: Text('247'),),

                            TextButton.icon(     // <-- TextButton
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.captions_bubble_fill, color: Color(0XFF7A8FA6),
                              ),
                              label: Text('57'),),
                            Icon(CupertinoIcons.square_arrow_up_fill, color: Color(0XFF7A8FA6),),
                          ],
                        ),
                        Image.asset("assets/images/Line.png", color: Color(0XFFB8C2C0),
                          height:1.1, width:456,),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25, top: 9),
                          height: 35, width: 206,
                          decoration: BoxDecoration(
                            color: Colors.transparent,),
                          child: Text("Celebration around you",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10,right: 10),
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                            ),
                              child: Image.asset("assets/images/female1.png",
                                height: 49, width: 49,),
                            ),
                            const SizedBox(width: 5,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Jane George",
                                  style: TextStyle(fontSize: 15,
                                      fontFamily: "OpenSans",
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12,),
                        const Center(child: Text("Birthday Celebration",
                          style: TextStyle(fontSize: 18,
                            fontFamily: "OpenSans",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFFF5BD4B),),
                        ),
                      ),
                      const Center(
                        child: Text("We’re interested in your ideas and would be glad to \nbuild something bigger out of it.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10,
                            fontFamily: "OpenSans",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        ),
                    ),
                        const SizedBox(height: 12,),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.all(1),
                    height: 19, width: 415,
                    decoration: BoxDecoration(
                      color: Colors.white, //screen color set to transparent or white
                    ),
                    child: Column(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/Rectangle 8.png", height: 90,),
                          Text("Alice Smith\n20 April at 4:20 PM",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15,
                                fontFamily: "OpenSans",
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),),
                          Icon(Icons.more_vert, color: Colors.black,),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        child: Image.asset("assets/images/Guy.png", height: 400,),
                      ),

                      Row( //icons for comment, like and share was added here....
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(     // <-- TextButton
                            onPressed: () {},
                            icon: Icon(Icons.handshake_sharp,
                            ),
                            label: Text('247'),),

                          TextButton.icon(     // <-- TextButton
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.captions_bubble_fill, color: Color(0XFF7A8FA6),
                            ),
                            label: Text(''),),
                          Icon(CupertinoIcons.square_arrow_up_fill, color: Color(0XFF7A8FA6),),
                        ],
                      ),
                      Image.asset("assets/images/Line.png", color: Color(0XFFB8C2C0),
                        height:1.1, width:456,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
