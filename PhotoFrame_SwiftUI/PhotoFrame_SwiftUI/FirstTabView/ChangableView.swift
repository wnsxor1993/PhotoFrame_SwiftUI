//
//  ChangableView.swift
//  PhotoFrame_SwiftUI
//
//  Created by juntaek.oh on 2022/03/10.
//

import SwiftUI

struct ChangableView: View {
    @State private var imageIndex = 0
    @State private var image = ImageName.noneImage
    
    var body: some View {
        VStack{
            if image != ImageName.noneImage{
                Image(image.showName())
                    .resizable()
                    .frame(width: 250, height: 300, alignment: .center)
            }
            Text("\(image.showName())")
                .font(.title)
                .bold()
                .padding(.bottom, 10)
            
            Button(action: {
                image.changeCase(nowIndex: &imageIndex)
            }){
                Text("Change")
            }
        }
    }
}

struct ChangableView_Previews: PreviewProvider {
    static var previews: some View {
        ChangableView()
    }
}
