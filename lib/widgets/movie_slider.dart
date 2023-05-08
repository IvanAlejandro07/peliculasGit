import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieSlider extends StatelessWidget {

  

  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 5,),
          
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const _MoviePoster();
              },
            ),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10,),
      child: Column(
        children: [
          GestureDetector(
           onTap: (() => Navigator.pushNamed(context, 'details', arguments: 'movie-instance')),
            child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: AssetImage('assets/no-image.jpg'),
              fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
          'Nombre de la pelicula el infierno cochiloco',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
