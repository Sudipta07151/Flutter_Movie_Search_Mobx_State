import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/model/change_theme.dart';
import 'package:state_management/screens/movie_add_screen.dart';
import 'package:state_management/widgets/wrapper_widget.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ChangeTheme(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Provider.of<ChangeTheme>(context).colourPrimary,
        accentColor: Provider.of<ChangeTheme>(context).colourAccent,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomeScreen(),
        '/add': (BuildContext context) => WrapperWidget(),
        '/login': (BuildContext context) => LoginScreen(),
      },
    );
  }
}
