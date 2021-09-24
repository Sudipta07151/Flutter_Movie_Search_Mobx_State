import 'package:flutter/material.dart';
import '../widgets/submit_button.dart';
import '../constants/constant.dart';

class AddScreen extends StatelessWidget {
  final movieState;
  AddScreen({required this.movieState});
  @override
  Widget build(BuildContext context) {
    var titleController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
              child: TextField(
                controller: titleController,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
              ),
            ),
            SubmitButton(
              state: movieState,
              onPressCallback: () {
                var movieData = {
                  'title': titleController.text,
                  //'year': yearController.text,
                  //'genre': genreController.text
                };
                return movieData;
              },
            ),
          ],
        ),
      ),
    );
  }
}
