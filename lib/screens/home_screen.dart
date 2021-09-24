import 'package:flutter/material.dart';
import 'package:state_management/widgets/wrapper_widget.dart';
import '../screens/movie_add_screen.dart';
import '../widgets/switch_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
        child: Center(
          child: Text('HOME SCREEN'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WrapperWidget(),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
        elevation: 0,
      ),
    );
  }
}
