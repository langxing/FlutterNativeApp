package com.example.application

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.idlefish.flutterboost.containers.BoostFlutterActivity
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        tvFlutter.setOnClickListener {
//            val params = HashMap<String, String>()
//            params["name"] = "Jack"
//            params["pwd"] = "123"
//            val intent = BoostFlutterActivity.withNewEngine()
//                .url("page_home")
//                .params(params)
//                .build(this)
//            startActivity(intent)
            PageRouter.openPageByUrl(this,
                "${PageRouter.FLUTTER_HOME_PAGE_URL}?${FlutterHomeActivity.KEY_NAME}=jack&${FlutterHomeActivity.KEY_PWD}=123")
        }
        tvDefault.setOnClickListener {
//            val intent = BoostFlutterActivity.withNewEngine()
//                .url("page_promotions")
//                .build(this)
//            startActivity(intent)
            PageRouter.openPageByUrl(this, PageRouter.FLUTTER_PROMOTIONS_PAGE_URL)
        }
    }
}
