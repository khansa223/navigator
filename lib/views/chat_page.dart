import 'package:flutter/material.dart';
import 'package:tugas_navigator/widget/menubotton.dart';



class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Chats'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Settings action
            },
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for messages or users',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ChatItem(
                  imageUrl: 'assets/images/satpam1.jpg', // Replace with your image asset
                  name: 'Satpam 1',
                  message: 'kene o, ngopi sek!',
                  time: '11:30',
                  unreadCount: 1,
                ),
                ChatItem(
                  imageUrl: 'assets/images/satpam2.jpg', // Replace with your image asset
                  name: 'Satpam 2',
                  message: 'aman, uwes tak check yo',
                  time: '11:30',
                  unreadCount: 1,
                ),
                ChatItem(
                  imageUrl: 'assets/images/satpam3.jpg', // Replace with your image asset
                  name: 'Satpam 3',
                  message: 'yo bar iki!',
                  time: '11:30',
                  unreadCount: 1,
                ),
                ChatItem(
                  imageUrl: 'assets/images/satpam4.jpg', // Replace with your image asset
                  name: 'Satpam 4',
                  message: 'Yo, tak doain lolos tahap 1 terus masuk ITS, Mangat!',
                  time: '11:30',
                  unreadCount: 1,
                ),
              ],
            ),
          ),
        ],
      ),
bottomNavigationBar: MenuBottom(3)
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final int unreadCount;

  ChatItem({
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageUrl), // Replace with your image asset
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 4),
          if (unreadCount > 0)
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                unreadCount.toString(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}