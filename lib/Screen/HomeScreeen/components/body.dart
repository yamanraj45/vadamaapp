import 'package:bhadama/productCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget homeBody(context) {
  List _name = [
    'Thermometer',
    'Oxy-meter',
    'Syringe Pump',
    'Oxygen Concentrater'
  ];
  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Rent Your',
                  style: TextStyle(color: Colors.black87, fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Needs',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Products',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    print('Pressed');
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ProducsttssList(),
                      ),
                    );
                  },
                  child: Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard('assets/images/one.jpg', _name[0], context),
                        promoCard('assets/images/two.jpg', _name[1], context),
                        promoCard('assets/images/three.jpg', _name[2], context),
                        promoCard('assets/images/four.jpg', _name[3], context),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/three.jpg')),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: [
                            0.3,
                            0.9
                          ],
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.2)
                          ]),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Best Design',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget promoCard(image, title, context) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: InkWell(
      onTap: () {
        print('Pressed');
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => ProducsttssList(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: [
                        0.1,
                        0.9
                      ],
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.1)
                      ])),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}



// import 'package:bhadama/Screen/HomeScreeen/NotificationScreen.dart';
// import 'package:bhadama/Screen/HomeScreeen/components/popular_products.dart';
// import 'package:bhadama/Screen/HomeScreeen/components/search_fields.dart';
// import 'package:flutter/material.dart';

// import '../../../size_config.dart';
// import 'categories.dart';
// import 'discount_banner.dart';
// import 'home_header.dart';

// import 'special_offers.dart';

// class HomeScreenBody extends StatefulWidget {
//   @override
//   State<HomeScreenBody> createState() => _HomeScreenBodyState();
// }

// class _HomeScreenBodyState extends State<HomeScreenBody> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(),
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: FlutterLogo(),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.pushReplacement(context, MaterialPageRoute(
//                 builder: (context) {
//                   return NotificationScreen();
//                 },
//               ));
//             },
//             icon: Icon(Icons.notifications_on_outlined),
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: getProportionateScreenHeight(20)),
//               // HomeHeader(),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SearchField(),
//               ),
//               SizedBox(height: getProportionateScreenWidth(10)),
//               // DiscountBanner(),
//               Categories(),
//               Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.15,
//                   width: double.infinity,
//                   child: Image.network(
//                       'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/free-google-classroom-banner-template-design-df5e76bfa478908057fd215227e2c284_screen.jpg?ts=1614075608'),
//                 ),
//               ),
//               SpecialOffers(),
//               SizedBox(height: getProportionateScreenWidth(30)),
//               // PopularProducts(),
//               SizedBox(height: getProportionateScreenWidth(30)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
