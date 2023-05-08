import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/now_playing_response.dart';

class MoviesProvider extends ChangeNotifier {

  final String _apiKey = '537ff426acb24dfa1ea4aee0b1090044';
  final String _baseUrl = 'api.themoviedb.org';
  final String _languege = 'es-ES'; 

  MoviesProvider() {
    print('Movies Provider');

    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
  
    var url = Uri.http(_baseUrl, '3/movie/now_playing',
    { 'api_key': _apiKey,
      'language': _languege,
      'page' : '1'
     }
    );

    final response = await http.get(url);

    final nowPlayingResponde = NowPlayingResponse.fromJson(response.body);

    print(nowPlayingResponde.adult);
  }





}
