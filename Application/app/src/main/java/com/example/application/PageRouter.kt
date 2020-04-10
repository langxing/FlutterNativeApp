package com.example.application

import android.app.Activity
import android.content.Context
import android.content.Intent

class PageRouter {

    companion object {
        val NATIVE_PAGE_URL = "nativePage"
        val NATIVE_MAIN_PAGE_URL = "nativeMainPage"
        val FLUTTER_HOME_PAGE_URL = "page_home"
        val FLUTTER_PROMOTIONS_PAGE_URL = "page_promotions"

        @JvmStatic
        fun openPageByUrl(context: Context, url: String): Boolean {
            return openPageByUrl(context, url, 0)
        }

        @JvmStatic
        fun openPageByUrl(context: Context, url: String, requestCode: Int): Boolean {
            try {
                val intent: Intent
                when {
                    url.startsWith(NATIVE_PAGE_URL) -> {
                        intent = Intent(context, NativeActivity::class.java)
                        intent.putExtra("url", url)
                        if (context is Activity) {
                            context.startActivity(intent)
                        }
                        return true
                    }
                    url.startsWith(FLUTTER_HOME_PAGE_URL) -> {
                        intent = Intent(context, FlutterHomeActivity::class.java)
                        intent.putExtra("url", url)
                        if (context is Activity) {
                            context.startActivityForResult(intent, requestCode)
                        }
                        return true
                    }
                    url.startsWith(FLUTTER_PROMOTIONS_PAGE_URL) -> {
                        intent = Intent(context, FlutterPromotionsActivity::class.java)
                        intent.putExtra("url", url)
                        if (context is Activity) {
                            context.startActivityForResult(intent, requestCode)
                        }
                        return true
                    }
                    else -> return false
                }
            } catch (t: Throwable) {
                return false
            }
        }
    }

}