import 'package:flutter/material.dart';

class DateColumn extends StatelessWidget {
  final String weekDay, date;
  final Color dateBg, dateTextColor;

  const DateColumn(
      {Key? key, required this.weekDay, required this.date, required this.dateBg, required this.dateTextColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weekDay, style: const TextStyle(color: Colors.white)),
        const SizedBox(height: 15),
        Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: dateBg,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Text(date, style: TextStyle(color: dateTextColor))),
      ],
    );
  }
}
