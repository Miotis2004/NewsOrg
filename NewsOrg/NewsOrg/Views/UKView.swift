//
//  UKView.swift
//  NewsOrg
//
//  Created by Ronald Joubert on 12/13/20.
//

import SwiftUI

struct UKView: View {
    @ObservedObject var list = GetUKData()
    
    var body: some View {
        NavigationView {
            List(list.datas) { i in
                NavigationLink(destination: WebView(url: i.url)
                                .navigationBarTitle("Story", displayMode: .inline)){
                    NewsCardView(image: i.image, headline: i.title, description: i.desc)
                }
               
            }.navigationBarTitle("UK")
        }
    }
}

struct UKView_Previews: PreviewProvider {
    static var previews: some View {
        UKView()
    }
}
