//
//  MainView.swift
//  MobileDevTests
//
//  Created by Shiddiq Syuhada on 02/03/22.
//

import SwiftUI
import Foundation

struct MainView: View {
    var body: some View {
        TabView {
            ItemView()
                .tabItem{
                    Label("Item", systemImage: "list.dash")
                }
            TaxView()
                .tabItem{
                    Label("Item", systemImage: "list.dash")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
