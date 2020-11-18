//
//  ContentView.swift
//  NewsOrg
//
//  Created by Field Employee on 11/17/20.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI

struct ContentView: View {
    
    @ObservedObject var list = GetData()

    var body: some View {
        HStack(spacing: 10){
            Button(action: {
                list.source = "https://newsapi.org/v2/top-headlines?country=us&apiKey=a53c806990674b42842537638c545e2f"
            }){
                ButtonView(buttonName: "Headlines")
            }
            
            Button(action: {
                list.source = "https://newsapi.org/v2/top-headlines?category=sports&apiKey=a53c806990674b42842537638c545e2f"
            }){
                ButtonView(buttonName: "Sports")
            }
            
            Button(action: {
                list.source = "https://newsapi.org/v2/top-headlines?country=gb&apiKey=a53c806990674b42842537638c545e2f"
            }){
                ButtonView(buttonName: "UK")
            }
        }
        
        NavigationView {
            List(list.datas) { i in
                NavigationLink(destination: WebView(url: i.url)
                                .navigationBarTitle("Story", displayMode: .inline)){
                    NewsCardView(image: i.image, headline: i.title, description: i.desc)
                }
               
            }.navigationBarTitle("Headlines")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


