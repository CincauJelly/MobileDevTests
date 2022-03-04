//
//  ItemCellsView.swift
//  MobileDevTests
//
//  Created by Shiddiq Syuhada on 03/03/22.
//

import SwiftUI

struct ItemCellsView: View {
    let id: Int
    let title: String
    
    init(id: Int, title: String){
        self.id = id
        self.title = title
    }
    var body: some View {
        VStack(alignment: .leading){
            Image("Home")
            Text("Nama barang: \(title)")
            Text("Harga : ")
            Text("Pajak ")
            Text("Pajak ")
        }
    }
}

struct ItemCellsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCellsView(id: 1, title: "Boneka")
    }
}
