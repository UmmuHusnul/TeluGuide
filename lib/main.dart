import 'package:flutter/material.dart';
import 'package:babii/maps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String Poppins = 'Poppins';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout part 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: Poppins,
      ),
      home: const MyHomePage(title: 'Telu Guide'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String Poppins = 'Poppins';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              children: [
                Container( //HEADER
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Color(0xFFD32F2F), Color(0xFFC62828)]),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Tel-U Guide", style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.25),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage("https://lms.telkomuniversity.ac.id/pluginfile.php/433784/user/icon/remui/f3?rev=69079646"),
                        radius: 20,
                      )
                    ],
                  ),
                ), //HEADER

                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hai Kakak!',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: Poppins,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 40),
                      ),
                      Text(
                        'Where are you headed to?',
                        style: TextStyle(
                            fontFamily: Poppins,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended Place:',
                        style: TextStyle(
                            fontFamily: Poppins,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),

                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Color(0xFFD9D9D9), Color(0xFFD9D9D9)]),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tel-U Coffee',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'Open Library',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'TULT',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

//Image.network("https://telucoffee.weeblysite.com/uploads/b/5c5f93d5280c2ce5bcb679311b619d1ba094f6e2542c2b722ed9445ccc273594/IMG_4959_1617450677.jpg?width=200&optimize=medium"),//