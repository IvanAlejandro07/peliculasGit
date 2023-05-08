import 'dart:math';

import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen ({super.key});

  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList( 
          delegate: SliverChildListDelegate([
          _PosterAndTitle(),
          SizedBox(height: 20,),
          _OverView(),
          CastingCard()
          ]) )
        ],
      )

    );
  }
}



class _CustomAppBar extends StatelessWidget {

  int numeroRandom = Random().nextInt(2);

List<String> carteles = ['https://static.wikia.nocookie.net/netflix9203/images/6/64/Woo%2C_una_abogada_extraordinaria_%28portada%29.webp/revision/latest?cb=20220803063331&path-prefix=es'
    , 'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/28b0ecf243509687008d95b3e1a43219630723a8eaf50f7234b05885543e836e._RI_V_TTW_.jpg'];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 300,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        centerTitle: true,
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.black12,
          child: const Text('Movie.ti1', style: TextStyle( fontSize: 16 ),),
        ),
        
        background: FadeInImage(
        placeholder: const AssetImage('assets/loading.gif'),
        image: NetworkImage(carteles[numeroRandom]),
        fit: BoxFit.fill,
        ),
      ),
    );
  }
}



class _PosterAndTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'), 
              image: AssetImage('assets/no-image.jpg'),
              height: 150,
            ),
          ),

          const SizedBox(width: 20,),

          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Movie.Title', style: textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('Original title', style: textTheme.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 1,),
              Row(
              children: [
                const Icon(Icons.star,size: 20,color: Colors.yellow,),
                const SizedBox(height: 5,),
                Text('movie.voteAverage', style: textTheme.caption,),
              ],
              )
            ],
          )


        ],
      ),
    );
  }
}







class _OverView extends StatelessWidget {
  const _OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text('Consequat enim eiusmod aute duis occaecat labore ad tempor non eiusmod sint laborum. Fugiat nulla fugiat esse voluptate reprehenderit reprehenderit magna commodo ex esse amet. Incididunt elit est velit et veniam reprehenderit ullamco officia ut magna nulla exercitation anim. Ex non do pariatur duis exercitation sit. Velit nostrud in proident velit aliquip enim.', textAlign: TextAlign.justify, style: Theme.of(context).textTheme.subtitle1,),
    );
  }
}