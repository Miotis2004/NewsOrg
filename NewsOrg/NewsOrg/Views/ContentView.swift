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
        
        NavigationView {
            List(list.datas) { i in
                NavigationLink(destination: WebView(url: i.url)
                                .navigationBarTitle("", displayMode: .inline)){
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


