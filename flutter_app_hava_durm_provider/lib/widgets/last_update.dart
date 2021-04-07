import 'package:flutter/material.dart';

class LastUpdateWidget extends StatelessWidget {
  DateTime local;
  LastUpdateWidget(this.local);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Son Güncelleme ${TimeOfDay.fromDateTime(local).format(context)}",
        style: TextStyle(fontSize: 14),
      ),
    ));
  }
}
