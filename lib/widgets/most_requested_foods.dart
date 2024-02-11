import 'package:flutter/material.dart';

class MostRequestedFoodsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Aliments les Plus Demandés',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // Ajoutez ici votre contenu pour les aliments les plus demandés
        ],
      ),
    );
  }
}
