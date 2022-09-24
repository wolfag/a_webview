//
//  WebView.swift
//  H4kEr
//
//  Created by TaiNguyen on 24/09/2022.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeStr = urlString {
            if let url = URL(string: safeStr) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "www.google.com")
    }
}
