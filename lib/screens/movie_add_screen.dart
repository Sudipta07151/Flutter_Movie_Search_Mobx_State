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
      backgroundColor: Colors.grey.shade900,
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
              child: TextField(
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 20,
                ),
                controller: titleController,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow.shade900),
                  ),
                  labelText: 'Movie Name',
                  labelStyle: TextStyle(color: Colors.yellow.shade900),
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
