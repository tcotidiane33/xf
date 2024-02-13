import 'package:flutter/material.dart';
class NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap; // Ajouter onTap

  const NavBarItem({
    Key? key,
    required this.icon,
    required this.label,
    this.onTap, // Ajouter onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Utiliser onTap ici
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Text(label),
        ],
      ),
    );
  }
}
