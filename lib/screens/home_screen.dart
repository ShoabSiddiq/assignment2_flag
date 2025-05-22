import 'package:flutter/material.dart';
import '../widgets/country_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> countries = const [
    {
      'name': 'Bangladesh',
      'description': 'A South Asian country with a rich cultural heritage.',
      'flag': 'assets/images/Flag_of_Bangladesh_Flat_Square-64x64.png'
    },
    {
      'name': 'Saudi Arabia',
      'description': 'The birthplace of Islam and home to Mecca and Medina.',
      'flag': 'assets/images/Flag_of_Saudi_Arabia_Flat_Square-512x512.png'
    },
    {
      'name': 'Indonesia',
      'description': "The world's largest Muslim-majority country.",
      'flag': 'assets/images/Flag_of_Indonesia_Flat_Square-512x512.png'
    },
    {
      'name': 'Pakistan',
      'description': 'A South Asian country with a diverse culture and history.',
      'flag': 'assets/images/Flag_of_Saudi_Arabia_Flat_Square-512x512.png'
    },
    {
      'name': 'Turkey',
      'description': 'A transcontinental country bridging Europe and Asia.',
      'flag': 'assets/images/Flag_of_Saudi_Arabia_Flat_Square-512x512.png'
    },
    {
      'name': 'Iran',
      'description':
      'Known for its ancient Persian civilization and contributions to art and science.',
      'flag': 'assets/images/Flag_of_Indonesia_Flat_Square-512x512.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
        centerTitle: true,
        actions: const [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = 2;
            if (constraints.maxWidth >= 1024) {
              crossAxisCount = 4;
            } else if (constraints.maxWidth >= 768) {
              crossAxisCount = 3;
            }
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 4,
              ),
              itemCount: countries.length,
              itemBuilder: (context, index) {
                final country = countries[index];
                return CountryCard(
                  name: country['name']!,
                  description: country['description']!,
                  flagPath: country['flag']!,
                );
              },
            );
          },
        ),
      ),
    );
  }
}