//
//  ItemView.swift
//  MobileDevTests
//
//  Created by Shiddiq Syuhada on 02/03/22.
//

import SwiftUI

struct Response: Codable {
    var data: [ItemModel]
}

struct ItemModel:Codable{
    var succes : Bool
    var code : Int
    var message : String
    var data : itemData
}
struct itemData: Codable{
    var id:Int
    var nama:String
    var harga:String
    var gambar:String
    var pajaks:[pajakData]
}
struct pajakData: Codable{
    var id:Int
    var nama:String
    var rate:String
}


struct ItemView: View {
    @State private var items = [ItemModel]()
    let dummyitems = ["Boneka","Gelas","Bantal"]
    var body: some View {
        NavigationView{
            
//            List(items, id:\.code){item in
//                VStack(alignment: .leading){
//                    Text(item.data.nama)
//                    Text(item.data.harga)
//                }
//            }
//            .task {
//                await loadData()
//            }
        }
        .navigationTitle("Items")
    }
    
    func loadData() async {
        guard let url = URL(string: "http://test-front.rukun.com/api/items?limit=10&page=1") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                items = decodedResponse.data
                print(decodedResponse.data)
            }
        } catch {
            print("Invalid data")
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
