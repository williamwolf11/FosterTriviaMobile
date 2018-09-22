package com.lowscarfgames.fostertrivia;

import android.app.Activity;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    WebView webView;




    @RequiresApi(api = Build.VERSION_CODES.JELLY_BEAN_MR1)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        webView = (WebView) findViewById(R.id.webView1);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        webView.setWebViewClient(new WebViewClient() {
            //public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {

               // Toast.makeText(activity, description, Toast.LENGTH_SHORT).show();
           // }

            public void onPageFinished(WebView view, String url) {
                CookieSyncManager.getInstance().sync();
            }


    });
        webView.loadUrl("https://www.181seconds.com/FosterAmerica/"); }
}


