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
        VStack{
            Label{
                Text("Zeto's SwiftUI")
                    .foregroundColor(.gray)
            } icon: {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            .font(.title)
            .padding(.bottom, 20)
            
            Button(action: {
                os_log("Button Clicked")
            }){
                HStack{
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
