import 'package:flutter/material.dart';

class StatusEmpty extends StatelessWidget {
  const StatusEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Sorry! There are no characters here'),
    );
  }
}
