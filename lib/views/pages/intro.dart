import 'package:flutter/material.dart';
import 'package:salon_booking_app/uidata.dart';
import 'package:salon_booking_app/views/widgets/button.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/img/hair.png",
                      ),
                      fit: BoxFit.contain)),
              height: MediaQuery.of(context).size.height * .45,
            ),
            const Text("Book your \nFavourite Stylist",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    fontSize: 22,
                    letterSpacing: 1.3)),
            const Text(
              "Lorem Ipsum is simply a dummy text of the printing and typesetting industry",
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.8, letterSpacing: 1.3),
            ),
            MyButton(btnText: "Get Started",
            onpressed: () => Navigator.pushNamed(context, UIData.homePageRoute)),
          ],
        ),
      ),
    );
  }
}
