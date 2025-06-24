import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';
import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Expanded(
            child: Category(
              text: 'Numbers',
              color: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NumbersPage();
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Category(
              text: 'Family Members',
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FamilyMembersPage();
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Category(
              text: 'Colors',
              color: Colors.purple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ColorsPage();
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Category(
              text: 'Phrases',
              color: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
