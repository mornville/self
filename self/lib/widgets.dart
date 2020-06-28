import 'package:flutter/material.dart';

Widget appIconCard(String title, String url, String image) {
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: GestureDetector(
      onTap: () {
        print('Most used tapped');
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0) //
                    ),
              ),
              child: Padding(
                  child: Image.network(
                    image,
                    height: 50.0,
                  ),
                  padding: EdgeInsets.all(7.0)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget categoryCard(String title, String info, String icon, String category,
    BuildContext context) {
  return Card(
    elevation: 1.0,
    child: Padding(
      padding: EdgeInsets.all(5.0),
      child: ListTile(
          title: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              title.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/appList',
                arguments: {'category': category});
          },
          subtitle: Padding(
            child: Text(
              info,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300),
            ),
            padding: EdgeInsets.all(5.0),
          ),
          trailing: Padding(
              child: Image.asset(
                'assets/' +
                    (category == 'news'
                        ? 'radio.png'
                        : category == 'sports'
                            ? 'ball.png'
                            : category == 'social'
                                ? 'thumb-up.png'
                                : 'shopping-cart.png'),
                height: 50.0,
              ),
              padding: EdgeInsets.only(
                  top: 0.0, left: 0.0, right: 0.0, bottom: 0.0))),
    ),
  );
}
