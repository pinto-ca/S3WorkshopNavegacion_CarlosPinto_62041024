import 'package:flutter/material.dart';
import 'package:flutter_workshop_navegacion/src/direction_detail_page.dart';

class DirectionPage extends StatelessWidget {
  const DirectionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Direction Page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Open Direction Detail'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DirectionDetailPage()),
              );
            }),
      ),
    );
  }
}
