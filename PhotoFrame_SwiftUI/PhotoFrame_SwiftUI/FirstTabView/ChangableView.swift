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
    @State private var showSheet = false
    
    var body: some View {
        VStack{
            if image != ImageName.noneImage{
                Image(image.showName())
                    .resizable()
                    .frame(width: 250, height: 300, alignment: .top)
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
            .padding(.bottom, 10)
            
            Button(action: {
                showSheet.toggle()
            }){
                Text("Show Sheet")
                    .foregroundColor(.green)
            }
            .sheet(isPresented: $showSheet){
                SheetView()
            }
        }
    }
}

struct ChangableView_Previews: PreviewProvider {
    static var previews: some View {
        ChangableView()
    }
}
