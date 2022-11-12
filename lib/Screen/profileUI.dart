import 'package:flutter/material.dart';

class ProfileUI extends StatefulWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> with TickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  var listImage = [
    "https://media.gettyimages.com/id/673304906/photo/the-right-support-will-do-you-good.jpg?s=612x612&w=gi&k=20&c=uuQE4slAPGACDRyuGNYJu2L9kucbtbvV9iaoExjLH28=",
    "https://media.gettyimages.com/id/673304906/photo/the-right-support-will-do-you-good.jpg?s=612x612&w=gi&k=20&c=uuQE4slAPGACDRyuGNYJu2L9kucbtbvV9iaoExjLH28=",
    "https://media.gettyimages.com/id/673304906/photo/the-right-support-will-do-you-good.jpg?s=612x612&w=gi&k=20&c=uuQE4slAPGACDRyuGNYJu2L9kucbtbvV9iaoExjLH28=",
    "https://media.gettyimages.com/id/673304906/photo/the-right-support-will-do-you-good.jpg?s=612x612&w=gi&k=20&c=uuQE4slAPGACDRyuGNYJu2L9kucbtbvV9iaoExjLH28=",
    "https://media.gettyimages.com/id/673304906/photo/the-right-support-will-do-you-good.jpg?s=612x612&w=gi&k=20&c=uuQE4slAPGACDRyuGNYJu2L9kucbtbvV9iaoExjLH28=",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://free2music.com/images/singer/2019/02/10/troye-sivan_2.jpg"),
            radius: 50.0,
          ),
          SizedBox(height: 20.0),
          Text(
            "@Wilson_je",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 30.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     SizedBox(width: 20.0),
          //     Column(
          //       children: [
          //         Text(
          //           "29",
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20.0,
          //           ),
          //         ),
          //         SizedBox(height: 15.0),
          //         Text(
          //           "Total Listing",
          //           style: TextStyle(
          //               color: Colors.black.withOpacity(0.3),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w100),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           "5⭐",
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20.0,
          //           ),
          //         ),
          //         SizedBox(height: 15.0),
          //         Text(
          //           "Seller Rating",
          //           style: TextStyle(
          //               color: Colors.black.withOpacity(0.3),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w300),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           "5⭐",
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 20.0,
          //           ),
          //         ),
          //         SizedBox(height: 15.0),
          //         Text(
          //           "Buyer Rating",
          //           style: TextStyle(
          //               color: Colors.black.withOpacity(0.3),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w300),
          //         ),
          //       ],
          //     ),
          //     SizedBox(width: 20.0),
          //   ],
          // ),
          // SizedBox(height: 10.0),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //     child: Text(
          //       'My Listings',
          //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 250.0, crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage(listImage[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: listImage.length,
                ),
                Center(
                  child: Text("You don't have any videos"),
                ),
                Center(
                  child: Text("You don't have any tagged"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
