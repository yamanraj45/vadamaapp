import 'package:flutter/material.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  final List<String> _listItem = [
    'https://www.chrysler.com/mediaserver/iris?COSY-EU-100-1713uLDEMTV1r9s%25WBXaBKFmfKSLC9gIQALMc6UhVkQGBfM9IW2VRkr72kVTd9pkewXGXQpMTV1rU76g6OQCckPquBhS1U%25wzbTllxA0ISW4ugQFmwFXkpd2DrBoMlo5wXAiiv&&pov=fronthero&width=170&height=92&bkgnd=transparent&resp=png&cut=&x=&y=&w=&h=',
    'https://www.chrysler.com/mediaserver/iris?COSY-EU-100-1713uLDEMTV1r9s%25WBXaBKFmfKSLC9gIQALMc6UhVkQGBfM9IW2VRkr72kVTd9pkewXGXQpMTV1rU76g6OQCckPquBhS1U%25wzbTllxA0ISW4ugQFmwFXkpd2DrBoMlo5wXAiiv&&pov=fronthero&width=170&height=92&bkgnd=transparent&resp=png&cut=&x=&y=&w=&h=',
    'https://www.chrysler.com/mediaserver/iris?COSY-EU-100-1713uLDEMTV1r9s%25WBXaBKFmfKSLC9gIQALMc6UhVkQGBfM9IW2VRkr72kVTd9pkewXGXQpMTV1rU76g6OQCckPquBhS1U%25wzbTllxA0ISW4ugQFmwFXkpd2DrBoMlo5wXAiiv&&pov=fronthero&width=170&height=92&bkgnd=transparent&resp=png&cut=&x=&y=&w=&h=',
    'https://www.chrysler.com/mediaserver/iris?COSY-EU-100-1713uLDEMTV1r9s%25WBXaBKFmfKSLC9gIQALMc6UhVkQGBfM9IW2VRkr72kVTd9pkewXGXQpMTV1rU76g6OQCckPquBhS1U%25wzbTllxA0ISW4ugQFmwFXkpd2DrBoMlo5wXAiiv&&pov=fronthero&width=170&height=92&bkgnd=transparent&resp=png&cut=&x=&y=&w=&h=',
    'https://www.chrysler.com/mediaserver/iris?COSY-EU-100-1713uLDEMTV1r9s%25WBXaBKFmfKSLC9gIQALMc6UhVkQGBfM9IW2VRkr72kVTd9pkewXGXQpMTV1rU76g6OQCckPquBhS1U%25wzbTllxA0ISW4ugQFmwFXkpd2DrBoMlo5wXAiiv&&pov=fronthero&width=170&height=92&bkgnd=transparent&resp=png&cut=&x=&y=&w=&h=',
    'https://www.chrysler.com/mediaserver/iris?COSY-EU-100-1713uLDEMTV1r9s%25WBXaBKFmfKSLC9gIQALMc6UhVkQGBfM9IW2VRkr72kVTd9pkewXGXQpMTV1rU76g6OQCckPquBhS1U%25wzbTllxA0ISW4ugQFmwFXkpd2DrBoMlo5wXAiiv&&pov=fronthero&width=170&height=92&bkgnd=transparent&resp=png&cut=&x=&y=&w=&h=',
    'https://www.chrysler.com/mediaserver/iris?COSY-EU-100-1713uLDEMTV1r9s%25WBXaBKFmfKSLC9gIQALMc6UhVkQGBfM9IW2VRkr72kVTd9pkewXGXQpMTV1rU76g6OQCckPquBhS1U%25wzbTllxA0ISW4ugQFmwFXkpd2DrBoMlo5wXAiiv&&pov=fronthero&width=170&height=92&bkgnd=transparent&resp=png&cut=&x=&y=&w=&h=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("0")),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Vehicle Rental',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   height: 250,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       image: DecorationImage(
              //           image: AssetImage('assets/images/one.jpg'),
              //           fit: BoxFit.cover)),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20),
              //         gradient:
              //             LinearGradient(begin: Alignment.bottomRight, colors: [
              //           Colors.black.withOpacity(.4),
              //           Colors.black.withOpacity(.2),
              //         ])),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: <Widget>[
              //         Text(
              //           "Lifestyle Sale",
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 35,
              //               fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(
              //           height: 30,
              //         ),
              //         Container(
              //           height: 50,
              //           margin: EdgeInsets.symmetric(horizontal: 40),
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(10),
              //               color: Colors.white),
              //           child: Center(
              //               child: Text(
              //             "Shop Now",
              //             style: TextStyle(
              //                 color: Colors.grey[900],
              //                 fontWeight: FontWeight.bold),
              //           )),
              //         ),
              //         SizedBox(
              //           height: 30,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      item,
                                    ),
                                    fit: BoxFit.contain)),
                            child: Transform.translate(
                              offset: Offset(50, -50),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 65, vertical: 63),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.bookmark_border,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
