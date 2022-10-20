//
//  MyWebView.swift
//  SwiftUI_WebView_tutorial
//
//  Created by 김지은 on 2022/10/20.
//

import Foundation
import SwiftUI
import WebKit

// UIKit의 UIView를 사용할 수 있도록 한다. → UIViewControllerRepresentable
struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    // UI View 만들기
    func makeUIView(context: Context) -> WKWebView {
        // url unwrapping 작업
        guard let url = URL(string: self.urlToLoad) else { return WKWebView() }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    // update UI View
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}
