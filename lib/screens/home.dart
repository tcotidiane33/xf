import 'package:flutter/material.dart';
import 'package:xf/widgets/news_announcements.dart';
import 'package:xf/widgets/most_requested_foods.dart';
import 'package:xf/widgets/friends_section.dart';
import 'package:xf/widgets/navbar_item.dart';
import 'package:xf/widgets/search_bar.dart';
import 'package:xf/widgets/add_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
     body: ListView(
        children: [
          SearchBar(), 
          NewsAnnouncementsSection(),
          MostRequestedFoodsSection(),
          FriendsSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Logique pour gérer les notifications
        },
        child: Icon(Icons.notifications),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            NavBarItem(icon: Icons.home, label: 'Home'),
            NavBarItem(icon: Icons.category, label: 'Category'),
            AddButton(),
            // NavBarItem(icon: Icons.add, label: 'Ajouter'),
            NavBarItem(icon: Icons.message, label: 'Message'),
            NavBarItem(icon: Icons.person, label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
