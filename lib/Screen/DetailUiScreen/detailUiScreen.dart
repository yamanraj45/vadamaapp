import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  ZoomDrawerController _controller = ZoomDrawerController();
  final List<MenuItem> options = [
    MenuItem(Icons.payment, 'Payments'),
    MenuItem(Icons.favorite, 'Discounts'),
    MenuItem(Icons.notifications, 'Notification'),
    MenuItem(Icons.format_list_bulleted, 'Orders'),
    MenuItem(Icons.help, 'Help'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Rent Now'),
          ),
          // TextButton(onPressed: () {}, child: Text('Bid Now'))
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ZoomDrawer(
        controller: _controller,
        style: DrawerStyle.Style1,
        menuScreen: Container(child: Text('Menu')),
        mainScreen: Container(
          child: Text('Main SCreen'),
        ),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        backgroundColor: Colors.grey,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
    // body: Container(
    //   child: Stack(children: [
    //     Container(
    //       height: MediaQuery.of(context).size.height * 0.3,
    //       width: double.infinity,
    //     ),
    //     Align(
    //       alignment: Alignment.topCenter,
    //       child: Container(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.only(
    //               topRight: Radius.circular(40.0),
    //               bottomRight: Radius.circular(40.0),
    //               topLeft: Radius.circular(40.0),
    //               bottomLeft: Radius.circular(40.0)),
    //         ),
    //         padding: EdgeInsets.all(8.0),
    //         height: MediaQuery.of(context).size.height * 0.33,
    //         width: double.infinity,
    //         child: Image.network(
    //           'https://images.immediate.co.uk/production/volatile/sites/4/2022/01/P90447343-highRes-8dac851.jpg?quality=90&resize=700,466',
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //     Align(
    //       alignment: Alignment.bottomCenter,
    //       child: Container(
    //           width: double.infinity,
    //           decoration: BoxDecoration(
    //             color: Colors.grey[100],
    //             borderRadius: BorderRadius.only(
    //                 topRight: Radius.circular(40.0),
    //                 bottomRight: Radius.circular(40.0),
    //                 topLeft: Radius.circular(40.0),
    //                 bottomLeft: Radius.circular(40.0)),
    //           ),
    //           child: Padding(
    //             padding: EdgeInsets.all(8.0),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Column(
    //                   children: [
    //                     SizedBox(
    //                       height: 30,
    //                     ),
    //                     Center(
    //                       child: Text(
    //                         'Gadi Ma',
    //                         style: TextStyle(
    //                             fontSize: 22, fontWeight: FontWeight.bold),
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       height: 30,
    //                     ),
    //                     Text(
    //                       '''asdasd asd asjhdkajshd kjaskjd ad \nasd askdhajksdh kjashdkj ahsdkj ahsdkj haksjdh kja''',
    //                     ),
    //                   ],
    //                 ),
    //                 Row(
    //                   children: [
    //                     Text(
    //                       'Price: ',
    //                       style: TextStyle(
    //                           fontSize: 18, fontWeight: FontWeight.bold),
    //                     ),
    //                     Text('2200')
    //                   ],
    //                 )
    //               ],
    //             ),
    //           ),
    //           height: MediaQuery.of(context).size.height * 0.60),
    //     ),
    //   ]),
    // ),
    ;
  }
}

class MenuItem {
  String title;
  IconData icon;
  MenuItem(this.icon, this.title);
}
