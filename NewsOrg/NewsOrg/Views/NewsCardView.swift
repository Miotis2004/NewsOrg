//
//  NewsCardView.swift
//  NewsOrg
//
//  Created by Field Employee on 11/17/20.
//

import SwiftUI
import SDWebImageSwiftUI
import WebKit

struct NewsCardView: View {
    
    var image: String = ""
    var headline: String = ""
    var description: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            if image != "" {
                WebImage(url: URL(string: image)!, options: .highPriority, context: nil)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.50), radius: 8, x: 6, y: 8)
            }
            Text(headline)
                .font(.title)
                .fontWeight(.bold)
            Text(description)
        }
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.50), radius: 8, x: 6, y: 8)
        .padding(10)
    }
    
}

struct NewsCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCardView()
            .previewLayout(.fixed(width: 320, height: 600))
    }
}

struct WebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
    }
    
}
