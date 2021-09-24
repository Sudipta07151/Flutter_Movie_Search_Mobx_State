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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          title: Text('FAVYOUR'),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 40,
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
                    itemCount: movieState.movielist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 80,
                        child: Center(
                          child: ListTile(
                            // leading:
                            //     //Text('${movieState.movielist[index].image}'),
                            //     Image.network(
                            //         '${movieState.movielist[index].image}'),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('RATING'),
                                Text(
                                  '${movieState.movielist[index].rating}',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),

                            title: Text(
                              '${movieState.movielist[index].title}'.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                            subtitle: Text(
                              'RELEASED: ${movieState.movielist[index].year}',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700),
                            ),
                            tileColor: Colors.cyan.shade300,
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Center(
                  child: Text('NOTHING TO SHOW'),
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
