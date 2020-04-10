
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/promotions/promotions_page.dart';
import 'package:flutter_boost/container/boost_page_route.dart';

class PageRouter {
  static final PAGE_HOME = "page_home";
  static final PAGE_PROMOTIONS = "page_promotions";

  static final Map<String, PageBuilder> routes = {
    PAGE_HOME : (pageName, params, _) {
      print("params：${params.toString()}");
      return HomePage(params: params);
    },
    PAGE_PROMOTIONS : (pageName, params, _) {
      return PromotionsPage();
    }
  };
}
