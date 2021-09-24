import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import '../mobx_state/movies_state.dart';
import '../widgets/spinner_widget.dart';
import '../screens/movie_add_screen.dart';

class WrapperWidget extends StatelessWidget {
  final movieState;
  WrapperWidget({required this.movieState});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (movieState.loader == true) {
        print('VISIBLE LOADER..........');
        return SpinnerWidget();
      } else if (movieState.loader == false) {
        print('VISBLE ADDSCREEN...........');
        return AddScreen(
          movieState: movieState,
        );
      }
      return SpinnerWidget();
    });
  }
}
