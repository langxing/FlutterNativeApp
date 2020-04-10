package com.example.application

import android.app.Application
import android.content.Context
import android.util.Log
import com.idlefish.flutterboost.FlutterBoost
import com.idlefish.flutterboost.Utils.assembleUrl
import com.idlefish.flutterboost.interfaces.INativeRouter
import io.flutter.embedding.android.FlutterView
import io.flutter.view.FlutterMain
import java.lang.StringBuilder


class FlutterMediator {

    companion object {
        fun init(app: Application) {
            // 此处必须初始化，载入Flutter引擎文件
            FlutterMain.startInitialization(app)
            val router = INativeRouter { context, url, urlParams, requestCode, _ ->
                val params = StringBuilder()
                urlParams.entries.forEachIndexed { index, entry ->
                    if (index == 0) {
                        params.append("?")
                    } else {
                        params.append("&")
                    }
                    params.append("${entry.key}=${entry.value}")
                }
                PageRouter.openPageByUrl(context, "$url$params", requestCode)
            }
            val boostLifecycleListener = object : FlutterBoost.BoostLifecycleListener {

                override fun beforeCreateEngine() {
                    Log.e("flutter", "beforeCreateEngine")
                }

                override fun onEngineCreated() {
                    Log.e("flutter", "onEngineCreated")
                }

                override fun onPluginsRegistered() {
                    Log.e("flutter", "onPluginsRegistered")
                }

                override fun onEngineDestroy() {
                    Log.e("flutter", "onEngineDestroy")
                }

            }
            val platform = FlutterBoost.ConfigBuilder(app, router)
                .isDebug(true)
                .whenEngineStart(FlutterBoost.ConfigBuilder.ANY_ACTIVITY_CREATED)
                .renderMode(FlutterView.RenderMode.texture)
                .lifecycleListener(boostLifecycleListener)
                .build()
            FlutterBoost.instance().init(platform)
        }
    }
}