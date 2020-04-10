import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

class HomePage extends StatelessWidget {
  final Map params;
  HomePage({this.params});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            params["name"],
            style: TextStyle(
              color: Colors.black,
              fontSize: 20
            ),),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  "打开原生页面",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15),
                ),
                onPressed: () {
                  FlutterBoost.singleton
                      .open("nativePage", urlParams: {"loginName" : "jack123"});
                },
              ),
              FlatButton(
                child: Text(
                  "返回原生页面",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15),
                ),
                onPressed: () {

                },
              )
            ],
          ),
        ),
      ),
    );
  }

}