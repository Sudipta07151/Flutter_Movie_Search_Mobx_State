import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/model/change_theme.dart';

class SwitchWidget extends StatefulWidget {
  final Function isCheckedCallback;
  SwitchWidget({required this.isCheckedCallback});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = widget.isCheckedCallback(isChecked);
          Provider.of<ChangeTheme>(context, listen: false)
              .changeValue(isChecked);
        });
      },
    );
  }
}
