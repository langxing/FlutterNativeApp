package com.example.application

import android.os.Bundle
import com.idlefish.flutterboost.containers.BoostFlutterActivity

class FlutterHomeActivity : BoostFlutterActivity() {
    private var pwd = ""
    private var url = ""
    private var name = ""

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        url = intent.getStringExtra(KEY_URL)
        val params = url.split("?")
        if (params.size > 1) {
            val data = params[1].split("&")
            data.forEach {
                val index = it.indexOf("=")
                if (it.startsWith(KEY_NAME)) {
                    name = it.substring(index + 1)
                } else if (it.startsWith(KEY_PWD)) {
                    pwd = it.substring(index + 1)
                }
            }
        }
    }

    override fun getContainerUrl(): String {
        return PageRouter.FLUTTER_HOME_PAGE_URL
    }

    override fun getContainerUrlParams(): HashMap<String, String> {
        val params = HashMap<String, String>()
        params[KEY_NAME] = name
        params[KEY_PWD] = pwd
        return params
    }

    companion object {
        const val KEY_NAME = "name"
        const val KEY_URL = "url"
        const val KEY_PWD = "pwd"
    }
}