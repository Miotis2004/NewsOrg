//
//  SportsView.swift
//  NewsOrg
//
//  Created by Ronald Joubert on 12/13/20.
//

import SwiftUI

struct SportsView: View {
    @ObservedObject var list = GetSportsData()
    
    var body: some View {
        NavigationView {
            List(list.datas) { i in
                NavigationLink(destination: WebView(url: i.url)
                                .navigationBarTitle("Story", displayMode: .inline)){
                    NewsCardView(image: i.image, headline: i.title, description: i.desc)
                }
               
            }.navigationBarTitle("Sports")
        }
    }
}

struct SportsView_Previews: PreviewProvider {
    static var previews: some View {
        SportsView()
    }
}
