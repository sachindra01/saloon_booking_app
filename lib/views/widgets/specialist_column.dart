import 'package:flutter/material.dart';
import 'package:salon_booking_app/uidata.dart';

class SpecialistColumn extends StatelessWidget {
  final String specImg, specName;

  const SpecialistColumn({Key? key, required this.specImg, required this.specName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(specImg), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              Text(specName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 4),
              Row(children: const <Widget>[
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.lightColor, size: 14),
              ]),
              const SizedBox(height: 4),
              Row(children: <Widget>[
                Icon(Icons.phone, size: 15, color: Colors.grey[700]),
                const SizedBox(width:2),
                Expanded(child: Text("0722000000", style: TextStyle(
                  color: Colors.grey[700], fontSize: 12
                )))
              ],)
            ],
          ),
        )
      ],
    );
  }
}
