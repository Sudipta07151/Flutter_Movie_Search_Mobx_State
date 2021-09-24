import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinnerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Container(
          color: Colors.grey.shade800,
          child: SpinKitThreeBounce(
            color: Colors.orange.shade800,
            size: 40,
          ),
        ),
      ),
    );
  }
}
