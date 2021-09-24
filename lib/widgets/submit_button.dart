import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../services/movie_client.dart';
import '../constants/constant.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../mobx_state/movies_state.dart';

class SubmitButton extends StatelessWidget {
  final Function onPressCallback;
  final state;
  final String text;
  SubmitButton(
      {this.text = 'ADD', required this.onPressCallback, required this.state});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Constants.colourAccent,
      child: Text('GET'),
      textStyle: TextStyle(
        color: Constants.colourPrimary,
        fontWeight: FontWeight.w900,
        fontSize: 25,
      ),
      onPressed: () async {
        //var movieData =
        //  await movieSearch.searchForMovie(onPressCallback()['title']);
        //print(movieData['results']);

        state.movie_name = onPressCallback()['title'];
        state.getMoviesService();
      },
    );
  }
}
