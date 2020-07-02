import 'package:flutter/material.dart';

class AddFavourite extends StatefulWidget {
  @override
  _AddFavouriteState createState() => _AddFavouriteState();
}

class _AddFavouriteState extends State<AddFavourite> {
  TextEditingController searchBarContent = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Add Quick Access Apps'),
        ),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
