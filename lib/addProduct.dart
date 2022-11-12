import 'package:bhadama/components/inputtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:velocity_x/velocity_x.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  late XFile imageFile;
  TextEditingController _name = TextEditingController();
  TextEditingController _desc = TextEditingController();
  TextEditingController _brand = TextEditingController();
  TextEditingController _condition = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  _getFromGallery() async {
    imageFile = (await _picker.pickImage(source: ImageSource.gallery))!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: double.infinity,
        height: 40,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              elevation: 2,
              backgroundColor: Colors.black),
          child: const Text('Post Ads'),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Add Products'),
      ),
      body: SafeArea(
          child: Container(
        // decoration: BoxDecoration(border: Border.all(8)),
        child: Column(children: [
          InkWell(
            onTap: () async {
              await _getFromGallery();
            },
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: imageFile.path == null
                  ? const Icon(Icons.add)
                  : Image.file(File(imageFile.path)),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InputText(
              label: 'Product Name',
              onChanged: (c) {},
              controller: _name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InputText(
              label: 'Brand',
              onChanged: (c) {},
              controller: _brand,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InputText(
              label: 'Description',
              onChanged: (c) {},
              controller: _desc,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InputText(
              label: 'Condition',
              onChanged: (c) {},
              controller: _condition,
            ),
          ),
        ]),
      )),
    );
  }
}
