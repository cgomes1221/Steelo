import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:steelo/data/data_json.dart';
import 'package:steelo/page/product_detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Icon(LineIcons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(LineIcons.shoppingCart),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                  children: List.generate(menuItems.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        activeMenu = index;
                      });
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          menuItems[index],
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Wrap(
            children: List.generate(dataItems.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ProductDetailPage(
                                id: dataItems[index]['id'].toString(),
                                name: dataItems[index]['name'],
                                code: dataItems[index]['code'],
                                img: dataItems[index]['img'],
                                price: dataItems[index]['price'].toString(),
                                promotionPrice: dataItems[index]
                                        ['promotionPrice']
                                    .toString(),
                                size: dataItems[index]['size'],
                                color: dataItems[index]['color'],
                              )));
                },
                child: Card(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Hero(
                          tag: dataItems[index]['id'].toString(),
                          child: Container(
                            width: (size.width - 16) / 2,
                            height: (size.width - 16) / 2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(dataItems[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            dataItems[index]['code'],
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            dataItems[index]['price'].toString() + " USD",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
              );
            }),
          )
        ],
      ),
    );
  }
}
