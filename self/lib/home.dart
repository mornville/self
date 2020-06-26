import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    child: Text(
                      'Select Category',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0),
                    ),
                    padding: EdgeInsets.only(left: 5.0, bottom:20.0)),
                Card(
                  child: ListTile(
                    title: Text("Social Apps"),
                    subtitle: Text("Facebook, Instagram, Telegram and more."),
                    trailing: Icon(Icons.swap_horizontal_circle),
                  ),
                ),
                 Card(
                  child: ListTile(
                    title: Text("Shopping Apps"),
                    subtitle: Text("Flipkart, Snapdeal, Amazon and more."),
                    trailing: Icon(Icons.card_travel),
                  ),
                  
                ),
                 Card(
                  child: ListTile(
                    title: Text("Sports"),
                    subtitle: Text("Cricbuzz, Espn and more."),
                    trailing: Icon(Icons.slow_motion_video),
                  ),
                ),
                 Card(
                  child: ListTile(
                    title: Text("News"),
                    subtitle: Text("CNN, NDTV and more."),
                    trailing: Icon(Icons.new_releases),
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left:20.0 , right: 20.0),
          ),
        ],
      ),
    );
  }

  _top() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0))),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.sentiment_neutral),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'SELF',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.access_alarm),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
