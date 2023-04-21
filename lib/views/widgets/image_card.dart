import 'package:flutter/material.dart';
import 'package:salon_booking_app/views/widgets/button2.dart';

class ImageCard extends StatefulWidget {
  final String cardImg;

  const ImageCard({Key? key, required this.cardImg}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
              image: AssetImage(widget.cardImg),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Look awesome \n & save Some",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          const SizedBox(height: 15),
          MyButton2(btnText: "GET UPTO 50% OFF", onpressed: () {})
        ],
      ),
    );
  }
}
