//
//  ContentView.swift
//  iDine
//
//  Created by Hoang Tran on 10/25/19.
//  Copyright © 2019 Hoang Tran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) {section in
                    Section(header: Text(section.name)){
                        ForEach(section.items){item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationBarTitle("Menu", displayMode: .inline)
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
