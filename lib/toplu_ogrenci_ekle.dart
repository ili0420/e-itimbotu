import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class StudendGroupAddedScreen extends StatefulWidget {
  @override
  _StudendGroupAddedScreenState createState() => _StudendGroupAddedScreenState();
}

class _StudendGroupAddedScreenState extends State<StudendGroupAddedScreen> {
  String? _fileName;

  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['xlsx', 'csv'], // İzin verilen dosya türleri
      );

      if (result != null) {
        setState(() {
          _fileName = result.files.single.name;
        });
        // dosya yükleme işlemini buraya yazacağız !!!
        print('Seçilen dosya: $_fileName');
      } else {
        // Kullanıcı dosya seçmeden vazgeçti
        print('Dosya seçilmedi');
      }
    } catch (e) {
      print('Dosya seçme hatası: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.cloud_upload, size: 50, color: Colors.indigo),
              SizedBox(height: 20),
              Text(
                'Dosya seç',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Öğrencilerinizi toplu olarak yüklemek için öğrenci listesi içeren dosyanızı seçin.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Yükle',style: TextStyle(color: Colors.white),),
                onPressed: _pickFile,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
              if (_fileName != null)
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Seçilen dosya: $_fileName',
                      style: TextStyle(fontSize: 14)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}