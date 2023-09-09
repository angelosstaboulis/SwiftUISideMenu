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
                    Text(item.wrappedValue).frame(width:205,height:55,alignment:.leading)
                        .padding(-15)
                        .font(.system(size: 12.7))
                        .onTapGesture {
                            clicked = item.wrappedValue
                        }
                        .listRowBackground(clicked == item.wrappedValue ? Color.gray : Color.clear)
                }
            }.edgesIgnoringSafeArea(.top)
            .padding(-15)
            .frame(maxWidth:UIScreen.main.bounds.width/1.7,
                    maxHeight: UIScreen.main.bounds.height,
                    alignment: .topLeading)
           
    }
}

struct SubMenu_Previews: PreviewProvider {
    static var previews: some View {
        SubMenu(clicked: "")
    }
}
