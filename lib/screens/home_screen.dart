import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas'),
        actions: [
          IconButton(
              onPressed: () {
                print('funcionando');
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
          CardSwiper(), 
          MovieSlider(),
          MovieSlider(),
          MovieSlider(),
          MovieSlider(),
          ],
        ),
      ),
    );
  }
}