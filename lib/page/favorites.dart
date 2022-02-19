import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  final String url;

  Favorites({@required this.url});

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        elevation: 8,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        title: Text(
          'Favorites',
          style: TextStyle(
            // fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            //margin: EdgeInsets.only(top: 35),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
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
                      "https://image-cdn.hypb.st/http%3A%2F%2Fs3.store.hypebeast.com%2Fmedia%2Fimage%2F30%2Fe0%2Fshirt-3-2-a8943.jpg?fit=max&w=1080&q=90"),
                  buildPictureCard(
                      "https://image-cdn.hypb.st/http%3A%2F%2Fs3.store.hypebeast.com%2Fmedia%2Fimage%2Fff%2F11%2Ftshirt-2-1-22455.jpg?fit=max&w=1080&q=90"),
                  buildPictureCard(
                      "https://image-cdn.hypb.st/http%3A%2F%2Fs3.store.hypebeast.com%2Fmedia%2Fimage%2F7e%2F76%2Fjacket-1-3h-c553f.jpg?fit=max&w=1080&q=90"),
                  buildPictureCard(
                      "https://static.nike.com/a/images/t_prod_sc/w_960,c_limit,f_auto/vqofkj00jbfntdayormr/air-jordan-3-retro-og-black-cement-2018-release-date-.jpg"),
                  buildPictureCard(
                      "https://static.highsnobiety.com/thumbor/n0W06u7qzdDitoIGH_M8y0VJCD4=/1600x1067/static.highsnobiety.com/wp-content/uploads/2020/06/15122405/charlotte-lee-new-balance-327-interview-main2.jpg"),
                  buildPictureCard(
                      "https://cdn.shopify.com/s/files/1/1614/2659/products/IMG_2778_394x.jpg?v=1581481338"),
                  buildPictureCard(
                      "https://cdn2.bigcommerce.com/server400/b247c/products/3269/images/24171/astros_109__39156.1306093093.500.750.jpg?c=2"),
                  buildPictureCard(
                      "https://image-cdn.hypb.st/http%3A%2F%2Fs3.store.hypebeast.com%2Fmedia%2Fimage%2Fac%2Fd9%2Fjacket-4-2-908d7.jpg?fit=max&w=1080&q=90"),
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
