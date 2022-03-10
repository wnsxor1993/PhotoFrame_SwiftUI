//
//  ContentView.swift
//  PhotoFrame_SwiftUI
//
//  Created by juntaek.oh on 2022/03/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ButtonLabelView()
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Button")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
