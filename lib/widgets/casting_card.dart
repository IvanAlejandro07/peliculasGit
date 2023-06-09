import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CastingCard extends StatelessWidget {
  const CastingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      color: Colors.red,

      child: ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => _CastCard(),
      
      ),

    
    );
  }
}


class _CastCard extends StatelessWidget {
  const _CastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 100,
      height: 100,
      color: Colors.green,

      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://i.blogs.es/253aab/henry_cavill-2665842/1366_2000.jpeg'),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(height: 5,),
        
          Text('Henry Cavill Superman', overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,)
        
        ],
      ),
 

    );
  }
}