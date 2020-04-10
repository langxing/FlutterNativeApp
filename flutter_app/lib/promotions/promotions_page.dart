import 'package:flutter/material.dart';
import 'package:flutter_app/promotions/promotions_item.dart';
import 'package:flutter_app/widget/titlebar.dart';

class PromotionsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {

            }),
        title: TitleBar(title: "9.9特惠专场",),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share, color: Colors.black,),
              onPressed: () {

              })
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xFFFEE1E0),
            height: 35,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: <Widget>[
                  Image.asset("images/icon_notice.png", width: 18, height: 18,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "全场免费配送，每次下单还有额外补贴10兑换分哦~",
                      style: TextStyle(
                          color: Color(0xFFFF3D3B),
                          fontSize: 12
                      ),
                    ),
                  )
                ],
              ),),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index){
                if (index == 0) {
                  return PromotionsHeader();
                } else {
                  return PromotionsItem();
                }
              },
            ),
          )
        ],
      ),
    );
  }

}