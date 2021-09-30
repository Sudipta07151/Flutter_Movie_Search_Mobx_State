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
                child: Hero(
                  tag: '${movie.image}',
                  child: Image.network(
                    movie.image,
                    height: 300,
                  ),
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
              Column(
                children: [
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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: RawMaterialButton(
                      constraints: BoxConstraints(maxWidth: 200, minHeight: 50),
                      fillColor: Colors.pink.shade500,
                      elevation: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'YOUR FAVOURITE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Icon(
                            Icons.favorite_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
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
