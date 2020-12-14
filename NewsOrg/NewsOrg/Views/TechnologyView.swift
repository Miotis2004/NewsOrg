//
//  TechnologyView.swift
//  NewsOrg
//
//  Created by Ronald Joubert on 12/14/20.
//

import SwiftUI

struct TechnologyView: View {
    @ObservedObject var list = GetEntertainmentData()
    
    var body: some View {
        NavigationView {
            List(list.datas) { i in
                NavigationLink(destination: WebView(url: i.url)
                                .navigationBarTitle("Story", displayMode: .inline)){
                    NewsCardView(image: i.image, headline: i.title, description: i.desc)
                }
               
            }.navigationBarTitle("Technology")
        }
    }
}

struct TechnologyView_Previews: PreviewProvider {
    static var previews: some View {
        TechnologyView()
    }
}
