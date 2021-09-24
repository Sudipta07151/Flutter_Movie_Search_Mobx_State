import 'dart:collection';
import 'package:flutter_bloc/flutter_bloc.dart';

import './movie_model.dart';

class MovieListEvents {
  List<Movie> _movieList = [];

  void addMovies(List<Movie> movies) {
    _movieList = movies;
  }

  List<Movie> get allMovieList {
    return _movieList;
  }
}

//   void addMoviesToList(String title, String year, String genre) {
//     final newMovie = Movie(genre: genre, title: title, year: year);
//     _movieList.add(newMovie);
//   }

//   int get totalMovies {
//     return _movieList.length;
//   }

//   UnmodifiableListView<Movie> get allMovies {
//     return UnmodifiableListView(_movieList);
//   }
// }
