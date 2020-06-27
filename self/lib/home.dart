import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController _searchview = TextEditingController();

  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text(
    'SELF - An all in one App',
    style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w700),
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            // actions: <Widget>[
            //   IconButton(
            //     icon: customIcon,
            //     onPressed: () {
            //       setState(() {
            //         if (this.customIcon.icon == Icons.search) {
            //           this.customIcon = Icon(Icons.cancel);
            //           this.customSearchBar = TextField(
            //             autofocus: true,
            //             cursorColor: Colors.white,
            //             style: TextStyle(
            //                 fontSize: 14.0,
            //                 color: Colors.white,
            //                 fontFamily: 'Raleway',
            //                 fontWeight: FontWeight.w500),
            //             controller: _searchview,
            //             decoration: InputDecoration(
            //               border: InputBorder.none,

            //               hintText: "Enter App Name",
            //               hintStyle: TextStyle(
            //                   fontSize: 14.0,
            //                   color: Colors.white,
            //                   fontFamily: 'Raleway',
            //                   fontWeight: FontWeight.w500),
            //               fillColor: Colors.white,

            //               //fillColor: Colors.green
            //             ),
            //           );
            //         } else {
            //           customIcon = Icon(Icons.search);
            //           customSearchBar = Text(
            //             'SELF - An all in one App',
            //             style: TextStyle(
            //                 fontFamily: 'OpenSans',
            //                 fontWeight: FontWeight.w700),
            //           );
            //         }
            //       });
            //     },
            //   ),
            // ],
            // titleSpacing: 10.0,
            title: customSearchBar,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color.fromRGBO(9, 9, 9, 1),
                        Color.fromRGBO(19, 19, 19, 1),
                        Color.fromRGBO(26, 26, 26, 1),
                      ])),
            ),
          ),
          body: ListView(
            children: <Widget>[
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
                        padding: EdgeInsets.only(left: 5.0, bottom: 20.0)),
                    Card(
                      child: ListTile(
                        title: Text("Social Apps"),
                        subtitle:
                            Text("Facebook, Instagram, Telegram and more."),
                        trailing: Icon(Icons.swap_horizontal_circle),
                        onTap: () {
                          Navigator.pushNamed(context, '/appList',
                              arguments: {"category": "social"});
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Shopping Apps"),
                        subtitle: Text("Flipkart, Snapdeal, Amazon and more."),
                        trailing: Icon(Icons.card_travel),
                        onTap: () {
                          Navigator.pushNamed(context, '/appList',
                              arguments: {"category": "shopping"});
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Sports"),
                        subtitle: Text("Cricbuzz, Espn and more."),
                        trailing: Icon(Icons.slow_motion_video),
                        onTap: () {
                          Navigator.pushNamed(context, '/appList',
                              arguments: {"category": "sports"});
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("News"),
                        subtitle: Text("CNN, NDTV and more."),
                        trailing: Icon(Icons.new_releases),
                        onTap: () {
                          Navigator.pushNamed(context, '/appList',
                              arguments: {"category": "news"});
                        },
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
              ),
            ],
          ),
        ));
  }
}
