import 'package:flutter/material.dart';
import 'package:salon_booking_app/uidata.dart';
import 'package:salon_booking_app/views/widgets/image_card.dart';
import 'package:salon_booking_app/views/widgets/my_column.dart';
import 'package:salon_booking_app/views/widgets/specialist_column.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSizeWidth = MediaQuery.of(context).size.width;
    final screenSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.short_text, color: Colors.black87),
            onPressed: () {}),
        actions: <Widget>[
          Container(
            decoration: const BoxDecoration(),
            margin: const EdgeInsets.only(right: 15, top: 15),
            child: const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                "images/profile.jpg",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: screenSizeWidth,
        height: screenSizeHeight,
        padding: const EdgeInsets.only(top:16, left:16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                  height: screenSizeHeight * .2,
                  width: screenSizeWidth,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ImageCard(cardImg: "assets/img/braid4.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "assets/img/braid3.jpg"),
                    ],
                  )),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/braid.png",
                        columnTxt: "Braids",
                        columnBg: UIData.lightColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/abuja.png",
                        columnTxt: "Abuja",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/blow.png",
                        columnTxt: "Blowdry",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/haircut.png",
                        columnTxt: "Haircut",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/relaxer.png",
                        columnTxt: "Relaxer",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/shampoo.png",
                        columnTxt: "Shampoo",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/nail.png",
                        columnTxt: "Manicure",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: const MyColumn(
                        columnImg: "assets/img/more.png",
                        columnTxt: "More",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Expanded(
                        child: Text("Hair Specialists",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),
              const SizedBox(height: 6),
              SizedBox(
                  height: 230,
                  width: screenSizeWidth,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SpecialistColumn(
                          specImg: "assets/img/braid2.jpg", specName: "Anny Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/profile.jpg", specName: "Joy Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid3.jpg",
                          specName: "Patience Roy"),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
