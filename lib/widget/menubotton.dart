import 'package:flutter/material.dart';



class MenuBottom extends StatefulWidget {
  int activePage; 
  MenuBottom(this.activePage);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int _selectedItem = 0;
  void getLink(index){
    setState(() {
      _selectedItem = index;
    });
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    }
  else if(index == 1){
    Navigator.pushReplacementNamed(context, '/setting', 
    );
  }
  else if(index == 2){
    Navigator.pushReplacementNamed(context, '/profil', 
    );
  }
  else if (index == 3) {
    Navigator.pushReplacementNamed(context, '/chat');
  }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.activePage,
      onTap: getLink,
      items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'setting',
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.chat),
        label: 'about',
        ),
    ]);
  }
}