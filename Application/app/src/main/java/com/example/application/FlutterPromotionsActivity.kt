package com.example.application

import com.idlefish.flutterboost.containers.BoostFlutterActivity

class FlutterPromotionsActivity : BoostFlutterActivity() {

    override fun getContainerUrl(): String {
        return PageRouter.FLUTTER_PROMOTIONS_PAGE_URL
    }
}