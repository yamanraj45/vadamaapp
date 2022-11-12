import 'package:flutter/material.dart';

class Gridders extends StatefulWidget {
  const Gridders({super.key});

  @override
  State<Gridders> createState() => _GriddersState();
}

class _GriddersState extends State<Gridders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (_, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlutterLogo(
                    size: 50,
                  ),
                  Text('Oxygen Cylinder'),
                ],
              ),
            );
          },
          itemCount: 4,
        ));
  }
}
