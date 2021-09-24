import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../model/movie_model.dart';

class DetailsPage extends StatelessWidget {
  final Movie movie;
  DetailsPage({required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  movie.image,
                  height: 300,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text(
                  '${movie.title}',
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text('${movie.details}'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: double.parse(movie.rating),
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 10,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Chip(
                    label: Text(movie.year),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
