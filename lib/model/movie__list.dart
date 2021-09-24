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
