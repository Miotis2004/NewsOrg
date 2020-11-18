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
                NewsCardView(image: i.image, headline: i.title, description: i.desc)
            }.navigationBarTitle("Headlines")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//HStack(spacing: 15) {
//    VStack(alignment: .leading, spacing: 10) {
//        Text(i.title).fontWeight(.heavy)
//        Text(i.desc)
//    }
//    WebImage(url: URL(string: i.image)!, options: .highPriority, context: nil)
//        .resizable()
//        .frame(width: 110, height: 135)
//        .cornerRadius(20)
//}.padding(.vertical ,15)
