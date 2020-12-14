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
    
    @State private var newsSource: NewsSource = .headlines

    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack(spacing: 10){
                Button(action: {
                    newsSource = .headlines
                }){
                    ButtonView(buttonName: "Headlines")
                }
                
                Button(action: {
                    newsSource = .sports
                }){
                    ButtonView(buttonName: " Sports ")
                }
                
                Button(action: {
                    newsSource = .uk
                }){
                    ButtonView(buttonName: "   UK   ")
                }
                
                Button(action: {
                    newsSource = .entertainment
                }){
                    ButtonView(buttonName: "Entertainment")
                }
                Button(action: {
                    newsSource = .technology
                }){
                    ButtonView(buttonName: "Technology")
                }
            }
        }
        
        if newsSource == .headlines {
            HeadlinesView()
        } else if newsSource == .sports {
            SportsView()
        } else if newsSource == .uk {
            UKView()
        } else if newsSource == .entertainment {
            EntertainmentView()
        } else if newsSource == .technology {
            TechnologyView()
        }
        
        
        
//        NavigationView {
//            List(list.datas) { i in
//                NavigationLink(destination: WebView(url: i.url)
//                                .navigationBarTitle("Story", displayMode: .inline)){
//                    NewsCardView(image: i.image, headline: i.title, description: i.desc)
//                }
//               
//            }.navigationBarTitle("Headlines")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum NewsSource {
    case headlines
    case sports
    case uk
    case entertainment
    case technology
}

