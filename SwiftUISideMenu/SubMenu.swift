//
//  SubMenu.swift
//  SwiftUISideMenu
//
//  Created by Angelos Staboulis on 26/6/23.
//

import SwiftUI

struct SubMenu: View {
    @State var items = ["Εγγραφα","Μίσθωση Ακινήτου","Συμβόλαιο","Εκκαθαριστικό Σημείωμα","Εκτίμηση Ακινήτου","Υπολογισμός Δόσης Δανείου"]
    @State var clicked:String
    var body: some View {
            VStack{
                List($items,id:\.self){ item in
                    Text(item.wrappedValue).padding(30.0)
                        .onTapGesture {
                            clicked = item.wrappedValue
                        }
                        .listRowBackground(clicked == item.wrappedValue ? Color.gray : Color.clear)
                }
            }.edgesIgnoringSafeArea(.top)
           
            
           
    }
}

struct SubMenu_Previews: PreviewProvider {
    static var previews: some View {
        SubMenu(clicked: "")
    }
}
