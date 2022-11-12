import 'package:bhadama/Screen/HomeScreeen/HomeScreen.dart';
import 'package:bhadama/colors.dart';
import 'package:bhadama/style.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class DeatilScreen extends StatelessWidget {
  const DeatilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.topCenter,
              height: size.height - 300,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/four.jpg'))),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: size.height / 2.2,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          height: 5,
                          width: 32 * 1.5,
                          decoration: BoxDecoration(
                            gradient: AppColor.gradient,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                      const ProductNameAndPrice(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Spacing(),
                      const Spacing(),
                      Text(
                        'A machine that help in generation of oxygen. It is used by people who have difficulty in breathing and have low oxygen volumne in the blood',
                      ),
                      const Spacing(),
                      Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16))),
                                  minimumSize: MaterialStateProperty.all(
                                      Size(size.width / 1.4, 37))),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Payment Method'),
                                      content: Container(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              print('Hello');
                                              Navigator.of(context).pop();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text('Rent Booking'),
                                                ),
                                              );
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomeScreen(),
                                                  ));
                                            },
                                            child: Container(
                                                height: 100,
                                                width: 100,
                                                child: Card(
                                                  child: Column(
                                                    children: [
                                                      Icon(Icons.money),
                                                      Text(
                                                        'Online \nPayment',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ),
                                          InkWell(
                                            child: Container(
                                                height: 100,
                                                width: 100,
                                                child: Card(
                                                  child: Column(
                                                    children: [
                                                      Icon(Icons.money),
                                                      Text(
                                                        'Cash',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          )
                                        ],
                                      )),
                                    );
                                  },
                                );
                              },
                              child: Text('Rent ',
                                  style: AppStyle.h3
                                      .copyWith(color: Colors.white))))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class TabTitle extends StatelessWidget {
  final String label;
  final bool selected;
  const TabTitle({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            label,
            style: AppStyle.text.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          if (selected)
            Container(
              width: 21,
              height: 2,
              decoration: const BoxDecoration(color: AppColor.primary),
            )
        ])
      ],
    );
  }
}

class Spacing extends StatelessWidget {
  const Spacing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
    );
  }
}

class RectButtonSelected extends StatelessWidget {
  final String label;
  const RectButtonSelected({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), gradient: AppColor.gradient),
      child: Center(
          child: Text(
        label,
        style: AppStyle.text,
      )),
    );
  }
}

class RectButton extends StatelessWidget {
  final String label;
  const RectButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: AppColor.primary)),
      child: Center(
          child: Text(
        label,
        // style: AppStyle.text.copyWith(color: sColors.white),
      )),
    );
  }
}

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Oxygen Concentrator',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          'Rs. 2000',
          style: AppStyle.h1Light
              .copyWith(color: AppColor.primary, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
