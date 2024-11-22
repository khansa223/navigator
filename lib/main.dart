import 'package:flutter/material.dart';
import 'package:tugas_navigator/views/chat_page.dart';
import 'package:tugas_navigator/views/home_page.dart';
import 'package:tugas_navigator/views/profile_page.dart';
import 'package:tugas_navigator/views/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
            
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/profil': (context) =>PersonListPage(),
        '/': (context) => HomePage(),
        '/setting': (context) => ProfilePage(),
        '/chat': (context) => ChatPage(),
        
      },
    );
  }
}
