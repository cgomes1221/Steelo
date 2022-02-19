import 'package:flutter/material.dart';
import 'package:steelo/widget/custom_drawer.dart';

class UserProf extends StatefulWidget {
  final String url;

  UserProf({@required this.url});

  @override
  _UserProfState createState() => _UserProfState();
}

class _UserProfState extends State<UserProf> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        elevation: 8,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text(
          'Your Closet',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Hero(
            tag: widget.url,
            child: Container(
              margin: EdgeInsets.only(top: 35),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 20,
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/GahGah.JPG'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Cam Gomes",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Boston, Massachusetts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 8, top: 8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.15),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25))),
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 5 / 6,
                children: [
                  buildPictureCard(
                      "https://www.whatproswear.com/wp-content/uploads/2020/12/ja-morant-wearing-nike-kd-4-weatherman-shoes-2020-e1609176453857-1024x1024.jpg"),
                  buildPictureCard(
                      "https://kixify-util.azureedge.net/images/cd296c21-306c-4e71-8a77-fac12179cfb2.jpg"),
                  buildPictureCard(
                      "https://images.stockx.com/images/Palace-Ralph-Lauren-Skate-Polo-Bear-Sweater-Aviator-Navy.jpg?fit=fill&bg=FFFFFF&w=480&h=320&auto=compress&q=90&dpr=1&trim=color&updated_at=1623270686&pad=0&fm=webp"),
                  buildPictureCard(
                      "https://static.highsnobiety.com/thumbor/C9DYIVF0k6U60zEhag_yj2BxZQ0=/1600x1067/static.highsnobiety.com/wp-content/uploads/2017/04/15163500/adidas-yeezy-guide-wave-runner-main-1.jpg"),
                  buildPictureCard(
                      "https://cdn2.bigcommerce.com/server400/b247c/products/3269/images/24171/astros_109__39156.1306093093.500.750.jpg?c=2"),
                  buildPictureCard(
                      "https://cdn.shopify.com/s/files/1/1614/2659/products/IMG_2778_394x.jpg?v=1581481338"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildPictureCard(String url) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(url),
            )),
      ),
    );
  }

  Column buildStatColumn(String value, String title) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
