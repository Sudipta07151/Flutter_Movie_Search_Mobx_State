import 'package:mobx/mobx.dart';
import '../services/movie_client.dart';
import '../model/movie_model.dart';

class MoviesState {
  Action getMoviesService = Action(() {});
  Action stop_loader = Action(() {});
  Action map_movies_tolist = Action(() {});
  Action toempty = Action(() {});
  Observable _movie_data = Observable(null);
  Observable _movie_name = Observable('');
  Observable _loader = Observable(false);
  Observable _movieList = Observable([]);

  MoviesState() {
    this._loader = Observable(false);
    this.getMoviesService = Action(_getMovieService);
    this._movie_data = Observable(null);
    this._movieList = Observable([]);
    this.toempty = Action(_toempty);
    this.map_movies_tolist = Action(_map_movie_tolist);
    this.stop_loader = Action(_stop_loader);
  }

  get movie_data => _movie_data.value;
  bool get loader => _loader.value;

  set movie_name(String newvalue) => _movie_name.value = newvalue;

  void _stop_loader() {
    _loader.value = false;
  }

  void _toempty() {
    _movieList.value = [].toList();
  }

  void _map_movie_tolist() {
    _movieList.value = _movie_data.value
        .map(
          (movie) => Movie(
              rating: movie['vote_average'].toString(),
              title: movie['title'].toString(),
              year: movie['release_date'].toString(),
              image:
                  // movie['backdrop_path'] != null
                  //     ? ('https://image.tmdb.org/t/p/w500movie' +
                  //         movie['backdrop_path'])
                  //     :
                  'https://images.unsplash.com/photo-1611890798517-07b0fcb4a811?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1171&q=80'),
        )
        .toList();
  }

  get movielist => _movieList.value.toList();
  void _getMovieService() async {
    _loader.value = true;
    _movie_data.value = null;
    var data = await MovieDbServer().searchForMovie(_movie_name.value);
    _movie_data.value = data;
    _movie_data.value = _movie_data.value['results'];
    print(_movie_data.value);
    stop_loader();
    if (_movie_data.value != null) {
      map_movies_tolist();
    } else {
      toempty();
    }
    print('....title:...............${movielist[0].title}');
    print(movielist.length);
  }
}
