//
//  ButtonLabelView.swift
//  PhotoFrame_SwiftUI
//
//  Created by juntaek.oh on 2022/03/10.
//

import SwiftUI
import os

struct ButtonLabelView: View {
    var body: some View {
        NavigationView{
            VStack{
                Label{
                    Text("Zeto's SwiftUI")
                        .foregroundColor(.gray)
                } icon: {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                .font(.title)
                .padding(.bottom, 10)
                
                NavigationLink(destination: ChangableView()){
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text("Click Here")
                }
            }
        }
    }
}

struct ButtonLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabelView()
    }
}
