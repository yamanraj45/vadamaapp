import 'package:bhadama/components/inputtext.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController _name = TextEditingController();
  TextEditingController _desc = TextEditingController();
  TextEditingController _condition = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Add Products'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2),
          ),
          child: Column(children: [
            InkWell(
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
                child: Icon(Icons.add),
              ),
            ),
            Container(
                child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "EMAIL",
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputText(
                label: 'Description',
                onChanged: (c) {},
                controller: _name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputText(
                label: 'Condition',
                onChanged: (c) {},
                controller: _name,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
