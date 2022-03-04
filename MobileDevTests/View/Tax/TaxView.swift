//
//  TaxView.swift
//  MobileDevTests
//
//  Created by Shiddiq Syuhada on 02/03/22.
//

import SwiftUI

struct Item: Codable{
    var id: Int
    var nama: String
    var harga: String
    var gambar: String
    var pajak: [String]
}

struct ItemList: Codable{
    var items: [Item]
}

struct TaxView: View {
    @State private var itemlist : [Item] = []
    var body: some View {
        Text("Hello")
            .task {
                await fetchData()
            }
//        List(item, id:\.code){item in
//            Text(item.message)
//        }.task {
//            await fetchData()
//        }
    }
    func fetchData() async {
        if let url = Bundle.main.url(forResource: "Dummy.json", withExtension: nil){
            if let data = try? Data(contentsOf: url){
                let jsonDecoder = JSONDecoder()
                do{
                    let result = try jsonDecoder.decode([Item].self, from: data)
                    self.itemlist = result
                } catch {
                    print("error parsing")
                }
            }
        }
    }
}

struct TaxView_Previews: PreviewProvider {
    static var previews: some View {
        TaxView()
    }
}
