import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/feed_page.dart';
import 'package:instagram_clone/pages/my_page.dart';

void main() {
  runApp(const MyApp());
}
final Images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2TS5E_z1bPd3XUvg2uwYTEJM1BMtE145yA7AvnGdEjjiRNZrxBdPAVkhfO2BH8FvTQCk&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy359-pcpDNHVQVptP04eGbx2mygdIf3syaaJkc_1vsZNJ2TYutjKvjdBjhPl4bt4WeCY&usqp=CAU'
  ];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _currentIndex = 0;
  final _pageWidgets = [
    FeedPage(),
    MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body:_pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'MyPage',
          ),
          ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
