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
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ], color: Colors.white, shape: BoxShape.circle),
              child: Padding(
                  child: Image.network(
                    image,
                    height: 50.0,
                  ),
                  padding: EdgeInsets.all(10.0)),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 12.0,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ),
  );
}

Widget categoryCard(String title, String info, String icon, String category,
    BuildContext context) {
  return Card(
    child: ListTile(
      title: Text(title),
      subtitle: Text(info),
      trailing: Icon(Icons.new_releases),
      onTap: () {
        Navigator.pushNamed(context, '/appList',
            arguments: {"category": category});
      },
    ),
  );
}
