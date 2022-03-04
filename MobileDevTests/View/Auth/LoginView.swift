//
//  LoginView.swift
//  MobileDevTests
//
//  Created by Shiddiq Syuhada on 03/03/22.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Text("Welcome")
                    .padding()
                TextField("Username", text: $username)
                TextField("Password", text: $password)
                NavigationLink("Login", destination: MainView())
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
