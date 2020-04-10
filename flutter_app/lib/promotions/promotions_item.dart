import 'package:flutter/material.dart';

class PromotionsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/icon_activity_banner.png",
      fit: BoxFit.cover,
      height: 150,
    );
  }
}

class PromotionsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset("images/icon_wechat_member.png", width: 24, height: 24,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      "韦小宝炸鸡汉堡(蛇口店)",
                      style: TextStyle(color: Color(0xFF333333), fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.asset(
                      "images/set_icon_right.png",
                      width: 9,
                      height: 13.5,
                      fit: BoxFit.cover,),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Divider(
                  height: 0.5,
                ),
              ),
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          "images/icon_alipay_logo.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6))
                        )
                      ),
                      Container(
                        width: 100,
                        height: 24,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF99000000),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6))
                        ),
                        child: Text("已抢光", style: TextStyle(color: Colors.white, fontSize: 14),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "飘香辣嫩鸡五方",
                            style: TextStyle(color: Color(0xFF333333), fontSize: 16),
                          ),
                          Expanded(
                              child: Text(
                                "内含丰富的营养物质，深受人们喜爱...",
                                style:
                                TextStyle(color: Color(0xFF999999), fontSize: 12),
                              )
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFE11F),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "¥",
                                      style: TextStyle(
                                          color: Color(0xFFFF2F54), fontSize: 12),
                                    ),
                                    Text(
                                      " 9.9",
                                      style: TextStyle(
                                          color: Color(0xFFFF2F54), fontSize: 18),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        "¥ 18",
                                        style: TextStyle(
                                            decoration: TextDecoration.lineThrough,
                                            decorationColor: Color(0xFFFF2F54),
                                            decorationStyle: TextDecorationStyle.solid,
                                            color: Color(0xFFFF2F54),
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFF6B44),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
                                child: FlatButton(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "马上抢",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 3),
                                        child: Image.asset(
                                            "images/button_icon_right.png",
                                            width: 9,
                                            height: 13.5,
                                            fit: BoxFit.cover),
                                      )
                                    ],
                                  ),
                                  onPressed: () {

                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
