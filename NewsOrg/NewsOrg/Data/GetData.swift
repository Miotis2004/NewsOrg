//
//  GetData.swift
//  NewsOrg
//
//  Created by Field Employee on 11/17/20.
//

import Foundation
import SwiftyJSON
import SDWebImageSwiftUI

class GetData: ObservableObject {
    
    @Published var datas = [DataType]()
    
    init() {
        let source = "https://newsapi.org/v2/top-headlines?country=us&apiKey=a53c806990674b42842537638c545e2f"
        
        let url = URL(string: source)!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, _, error) in
            
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"] {
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let image = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                DispatchQueue.main.async{
                    self.datas.append(DataType(id: id, title: title, desc: description, image: image, url: url))
                }
            }
        }.resume()
    }
}
