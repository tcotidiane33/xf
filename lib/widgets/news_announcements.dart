import 'package:flutter/material.dart';
//import 'package:xf/widgets/slide_item.dart'

class NewsAnnouncementsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Nouvelles Annonces',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          //SlideItem(img: '/',),
          //SizedBox(height: 10),
          // Ajoutez ici votre contenu pour les annonces
        ],
      ),
    );
  }
}
