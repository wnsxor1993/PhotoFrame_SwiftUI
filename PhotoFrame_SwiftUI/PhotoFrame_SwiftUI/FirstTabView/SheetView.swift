//
//  SheetView.swift
//  PhotoFrame_SwiftUI
//
//  Created by juntaek.oh on 2022/03/15.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }){
            Text("Dismiss")
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
