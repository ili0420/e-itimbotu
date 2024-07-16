import 'package:flutter/material.dart';

import 'dropdown.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Dersler'),
    actions: [
    Padding(
    padding: const EdgeInsets.only(right: 16.0),
    child: DerslerDropdown(),
    ),
    ],
        ),
      body: BackgroundImage(),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/section.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.dstATop,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 700, left: 5),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Dersler",
                      style: TextStyle(fontSize: 20, color: Colors.black),

                    ),
                  ),
                  SizedBox(width: 5), // "Dersler" ve ikon arasında küçük bir boşluk
                  Image.asset(
                    "assets/images/open-book.png",
                    width: 24, //
                  ),
                  SizedBox(width: 20), // İkonlar ve metinler arasında daha büyük boşluk
                  InkWell(
                    onTap: (){},
                    child: Text(
                      "Paketler",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.asset(
                    "assets/images/online-video.png",
                    width: 24, // Resmin genişliği
                    height: 24, // Resmin yüksekliği
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
