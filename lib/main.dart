import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/model/change_theme.dart';
import 'package:state_management/screens/movie_add_screen.dart';
import 'package:state_management/widgets/wrapper_widget.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../mobx_state/movies_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ChangeTheme(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final movieState = MoviesState();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Provider.of<ChangeTheme>(context).colourPrimary,
        accentColor: Provider.of<ChangeTheme>(context).colourAccent,
        fontFamily: 'Orbitron',
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomeScreen(
              movieState: movieState,
            ),
        '/add': (BuildContext context) => WrapperWidget(
              movieState: movieState,
            ),
        '/login': (BuildContext context) => LoginScreen(),
      },
    );
  }
}
