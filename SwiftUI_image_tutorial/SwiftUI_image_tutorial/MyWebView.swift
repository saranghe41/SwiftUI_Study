//
//  MyWebView.swift
//  SwiftUI_image_tutorial
//
//  Created by 김지은 on 2022/10/21.
//

import Foundation
import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    var url: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // url unwrapping
        guard let url = URL(string: self.url) else {
            // url이 없으면 기본 웹페이지 보여주기
            return WKWebView()
        }
        
        // 위에서 받은 url로 urlRequest 인스턴스 생성
        let urlRequest = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(urlRequest)
        
        return wkWebView
    }
    
    // 업데이트
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(url: "https://www.naver.com")
    }
}
