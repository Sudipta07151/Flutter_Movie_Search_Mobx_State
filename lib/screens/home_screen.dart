import 'package:flutter/material.dart';
import '../widgets/switch_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../mobx_state/movies_state.dart';

class HomeScreen extends StatelessWidget {
  final MoviesState movieState;
  HomeScreen({required this.movieState});
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        backgroundColor: Colors.grey.shade900,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          title: Text('FAVYOUR'),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'Orbitron',
            fontSize: 30,
          ),
          centerTitle: true,
          leading: SwitchWidget(
            isCheckedCallback: (value) {
              print('VALUE GOT $value');
              return !value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: Container(
          child: movieState.movielist.length > 0
              ? Center(
                  child: ListView.builder(
                    padding: EdgeInsets.all(15),
                    itemCount: movieState.movielist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              print('TAPPED ${movieState.movielist[index]}');
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.all(10),
                              leading:
                                  //Text('${movieState.movielist[index].image}'),
                                  Image.network(
                                      '${movieState.movielist[index].image}'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'RATING',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '${movieState.movielist[index].rating}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              title: Text(
                                '${movieState.movielist[index].title}'
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.purple.shade50,
                                ),
                              ),
                              subtitle: Text(
                                'RELEASED: ${movieState.movielist[index].year}',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.purple.shade100,
                                ),
                              ),
                              tileColor: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Center(
                  child: Text(
                    'NOTHING TO SHOW',
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add');
          },
          child: Icon(
            Icons.search_sharp,
            color: Colors.white,
            size: 30,
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
