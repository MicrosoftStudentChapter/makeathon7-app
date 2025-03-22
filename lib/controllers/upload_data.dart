import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:excel/excel.dart';

class UploadExcelPage extends StatefulWidget {
  const UploadExcelPage({super.key});

  @override
  _UploadExcelPageState createState() => _UploadExcelPageState();
}

class _UploadExcelPageState extends State<UploadExcelPage> {
  Future<void> uploadExcelToFirestore() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      var bytes = await file.readAsBytes();
      var excel = Excel.decodeBytes(bytes);

      for (var table in excel.tables.keys) {
        var sheet = excel.tables[table];

        for (var i = 1; i < (sheet?.rows.length ?? 0); i++) {
          var row = sheet?.rows[i];

          if (row != null) {
            Map<String, dynamic> userData = {
              "name": row[0]?.value ?? "",
              "email": row[1]?.value ?? "",
              "phone": row[2]?.value ?? "",
              "team_name": row[3]?.value ?? "",
              "team_id": row[4]?.value ?? "",
            };

            await FirebaseFirestore.instance.collection("users").add(userData);
          }
        }
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Data uploaded successfully!")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("File selection canceled")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Excel to Firestore")),
      body: Center(
        child: ElevatedButton(
          onPressed: uploadExcelToFirestore,
          child: Text("Upload Excel"),
        ),
      ),
    );
  }
}
