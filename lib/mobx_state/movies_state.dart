import 'package:mobx/mobx.dart';
import '../services/movie_client.dart';

class MoviesState {
  Action getMoviesService = Action(() {});
  Observable _movie_data = Observable(null);
  Observable _movie_name = Observable('');
  Action stop_loader = Action(() {});
  Observable _loader = Observable(false);
  MoviesState() {
    this._loader = Observable(false);
    this.getMoviesService = Action(_getMovieService);
    this._movie_data = Observable(null);
    this.stop_loader = Action(_stop_loader);
  }

  get movie_data => _movie_data.value;
  bool get loader => _loader.value;
  set movie_name(String newvalue) => _movie_name.value = newvalue;
  void _stop_loader() {
    _loader.value = false;
  }

  void _getMovieService() async {
    _loader.value = true;
    _movie_data.value = null;
    print('LOADER VALUE $loader');
    var data = await MovieDbServer().searchForMovie(_movie_name.value);
    _movie_data.value = data;
    stop_loader();
    print('LOADER VALUE $loader');
    print(_movie_data.value);
  }
}
