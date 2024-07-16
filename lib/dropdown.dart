import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: DerslerDropdown(),
        ),
        body: Center(
          child: Text('Ana Sayfa İçeriği'),
        ),
      ),
    );
  }
}

class DerslerDropdown extends StatefulWidget {
  @override
  _DerslerDropdownState createState() => _DerslerDropdownState();
}

class _DerslerDropdownState extends State<DerslerDropdown> {
  String selectedClass = 'Dersler';
  Map<String, List<String>> classToLessons = {
    '1. Sınıf': [
      'Türkçe',
      'Matematik',
      'Fen Bilgisi',
      'Sosyal Bilgiler',
      'Din Kültürü ve Ahlak Bilgisi',
      'İngilizce'
    ],
    '2. Sınıf': [
      'Türkçe',
      'Matematik',
      'Fen Bilgisi',
      'Sosyal Bilgiler',
      'Din Kültürü ve Ahlak Bilgisi',
      'İngilizce'
    ],
    // Diğer sınıflar için de benzer şekilde ekleyebilirsiniz
  };

  List<String> _currentLessons = [];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<String>(
          value: selectedClass,
          icon: Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.transparent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              if (newValue != null) {
                selectedClass = newValue;
                _currentLessons = classToLessons[selectedClass] ?? [];
              }
            });
          },
          items: <String>[
            'Dersler',
            '1. Sınıf',
            '2. Sınıf',
            '3. Sınıf',
            '4. Sınıf',
            '5. Sınıf',
            '6. Sınıf',
            '7. Sınıf',
            '8. Sınıf'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (_currentLessons.isNotEmpty)
          PopupMenuButton<String>(
            onSelected: (String result) {
              setState(() {
                // Seçilen dersi işleyebilirsiniz
              });
            },
            itemBuilder: (BuildContext context) {
              return _currentLessons.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            child: Text(
              "Dersler",
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
      ],
    );
  }
}
