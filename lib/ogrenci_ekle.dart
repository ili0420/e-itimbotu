import 'package:egitim_mobil_ui/toplu_ogrenci_ekle.dart';
import 'package:flutter/material.dart';

class StudentAdded extends StatefulWidget {
  const StudentAdded({super.key});

  @override
  _StudentAddedState createState() => _StudentAddedState();
}

class _StudentAddedState extends State<StudentAdded> {
  // Controllers to hold text input
  var _nameController = TextEditingController();
  var _surnameController = TextEditingController();
  var _birthDateController = TextEditingController();
  var _classController = TextEditingController();
  var _studentNumberController = TextEditingController();
  var _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("Öğrenci Ekle Sayfası"),
          backgroundColor: Colors.grey,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:20.0, horizontal:
            16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5, bottom: 30),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StudentAdded()),
                            );
                          },
                          icon: Icon(Icons.person),
                          label: Text(
                            "Öğrenci Ekleme",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.indigo),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => StudendGroupAddedScreen()),
                            );
                          },
                          icon: Icon(Icons.group),
                          label: Text(
                            "Toplu Öğrenci Ekleme",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.indigo),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.symmetric(vertical:30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Eklemek istediğiniz öğrencinin bilgilerini girin",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        Text("Adı",
                        style: TextStyle(color: Colors.indigo),
                        ),
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(hintText: "Ayse"),
                        ),
                        Text("Soyadı",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        TextField(
                          controller: _surnameController,
                          decoration: InputDecoration(hintText: "Yılmaz"),
                        ),
                        Text("Doğum Tarihi",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        TextField(
                          controller: _birthDateController,
                          decoration: InputDecoration(hintText: "gg.aa.yyy"),
                        ),
                        Text("Sınıf",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        TextField(
                          controller: _classController,
                          decoration: InputDecoration(hintText: "5A"),
                        ),
                        Text("Öğrenci Numarası",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        TextField(
                          controller: _studentNumberController,
                          decoration: InputDecoration(hintText: "202463"),
                        ),
                        Text("Mail Adresi",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(hintText: "abc@gmail.com"),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Öğrenci Ekle",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(color: Colors.indigo),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }




