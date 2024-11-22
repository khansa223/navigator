import 'package:flutter/material.dart';
import 'package:tugas_navigator/widget/menubotton.dart';



class PersonListPage extends StatelessWidget {
  final List<Person> people = [
    Person(name: 'Khansa Satya Bimodiningrat', imageUrl: 'assets/images/person1.jpg'),
    Person(name: 'Fatih Ahmad Muhammad Thoriq', imageUrl: 'assets/images/person2.jpg'),
    Person(name: 'Ezra Chandra Putra Dewa Patrikha', imageUrl: 'assets/images/person3.jpg'),
    Person(name: 'Sinta Wulandari', imageUrl: 'assets/images/person4.jpg'),
    Person(name: 'Bima Satria', imageUrl: 'assets/images/person5.jpg'),
    Person(name: 'Nadira Rahman', imageUrl: 'assets/images/person6.jpg'),
    Person(name: 'Fajar Santoso', imageUrl: 'assets/images/person7.jpg'),
    Person(name: 'Maya Putri', imageUrl: 'assets/images/person8.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Daftar Orang'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Settings action
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Back action
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Ada 25 Orang Terdaftar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return PersonCard(person: people[index]);
              },
            ),
          ),
        ],
      ),
     bottomNavigationBar: MenuBottom(2),
    );
  }
}

class Person {
  final String name;
  final String imageUrl;

  Person({required this.name, required this.imageUrl});
}

class PersonCard extends StatelessWidget {
  final Person person;

  PersonCard({required this.person});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Card(
        color: Colors.blue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(person.imageUrl), // Replace with your image asset
                radius: 25,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  person.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // "Cek Info" button action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Cek Info'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}