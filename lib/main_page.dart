import 'package:flutter/material.dart';

import 'dropdown.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

class BackgroundImage extends StatefulWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  _BackgroundImageState createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
                Colors.black.withOpacity(0.7),
                BlendMode.dstATop,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 700,
          left: 5,
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  "Dersler",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(width: 5),
              Image.asset(
                "assets/images/open-book.png",
                width: 24,
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: Text(
                  "Paketler",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(width: 5),
              Image.asset(
                "assets/images/online-video.png",
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                child: Container(
                  width: 300,
                  height: 400,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/work.png'),
                        Text('5.Sınıf Eğitim Seti'),
                        Text(
                          'Kapsamlı ders içerikleri ve sınav stratejileri ile donatılan bu paket, öğrencilerin hedeflerine emin adımlarla ilerlemelerine yardımcı olur.',
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'İncele',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.chevron_right, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
