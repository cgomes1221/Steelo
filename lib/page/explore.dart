import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.blue,
        //I can use this code to change the background color if I want
        padding: EdgeInsets.only(left: 10, right: 10, top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            ),
            Text(
              "Explore new Styles",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 2,
              color: Colors.grey[300],
              margin: EdgeInsets.symmetric(horizontal: 30),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8),
                children: [
                  // first url is the link to the post
                  // second url is the users profile picture
                  buildPostSection(
                      "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F10%2Ffucking-awesome-fw21-collection-drop-2-lookbook-release-1.jpg?q=90&w=1400&cbr=1&fit=max",
                      "https://www.curryathletics.com/sports/mlax/2018-19/photos/0001/19-11562-4399_ad_hoc.jpg?max_width=160&max_height=210"),
                  buildPostSection(
                      "https://static.highsnobiety.com/thumbor/cVjALxLhGWJaZosxQZNUPRgzjPM=/1600x1067/static.highsnobiety.com/wp-content/uploads/2021/10/04215239/parajumpers-10.jpg",
                      "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=100&w=640"),
                  buildPostSection(
                      "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F10%2Fred-wing-classic-moc-toe-gore-tex-fw21-release-info-007.jpg?q=90&w=1400&cbr=1&fit=max",
                      "https://randomuser.me/api/portraits/men/16.jpg"),
                  buildPostSection(
                      "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2021%2F10%2Fsupreme-the-north-face-fall-2021-collaboration-release-info-01.jpg?q=90&w=1400&cbr=1&fit=max",
                      "https://www.twincities.com/wp-content/uploads/2019/01/Hockey-Casey-Mittelstadt-RS224332_hkp-008-Grand-Rapids-vs-Eden-Prairie1.jpg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildPostSection(String urlPost, String urlProfilePhoto) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildPostPicture(urlPost),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  Stack buildPostPicture(String urlPost) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width - 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(urlPost),
              )),
        ),
      ],
    );
  }
}
