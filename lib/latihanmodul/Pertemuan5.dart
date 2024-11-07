import 'package:flutter/material.dart';

class Pertemuan5 extends StatefulWidget {
  const Pertemuan5({super.key});

  @override
  State<Pertemuan5> createState() => _Pertemuan5State();
}

class _Pertemuan5State extends State<Pertemuan5> {
  bool switchValue = false; // Untuk dark mode switch
  String selectedRadio = ''; // Untuk pilihan jenis kelamin
  bool olahraga = false; // Untuk hobi Olahraga
  bool seni = false; // Untuk hobi Seni
  String nama = ''; // Nama input
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: switchValue ? ThemeData.dark() : ThemeData.light(), // Mengatur tema berdasarkan switchValue
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan 5 Widget Lanjutan'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Input nama
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(labelText: 'Masukkan Nama'),
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
              ),
              SizedBox(height: 20),
              
              // Pilihan Jenis Kelamin
              Row(
                children: [
                  Text('Jenis Kelamin: '),
                  Radio(
                    value: 'Laki-laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    },
                  ),
                  Text('Laki-laki'),
                  Radio(
                    value: 'Perempuan',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    },
                  ),
                  Text('Perempuan'),
                ],
              ),
              SizedBox(height: 20),
              
              // Pilihan Hobi
              Text('Hobi:'),
              CheckboxListTile(
                title: Text('Olahraga'),
                value: olahraga,
                onChanged: (value) {
                  setState(() {
                    olahraga = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Seni'),
                value: seni,
                onChanged: (value) {
                  setState(() {
                    seni = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              
              // Switch untuk kelulusan
              SwitchListTile(
                title: Text('Lulus'),
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  