//
//  ContentView.swift
//  SwiftUISideMenu
//
//  Created by Angelos Staboulis on 26/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var showHide = false
    var body: some View {
        VStack(alignment:.leading){
                Button(action: {
                    showHide.toggle()
                }) {
                    Image("menu")
                }
            VStack{
                showHide ? AnyView(SubMenu(clicked: "")) : AnyView(EmptyView())
            }.padding(1.0)
        }.frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .topLeading)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
