//
//  ButtonMoreUIView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 18/11/24.
//

import SwiftUI

struct ButtonMoreUIView: View {
    
    let titleButton: String
    let colorButton: String
    let actionButton: () -> Void
    
    var body: some View {
        Button {
            
        } label: {
            Text(titleButton)
                .bold()
                .font(.title2)
                .foregroundColor(.primary)
                .frame(width: 200, height: 30)
                .padding()
                .background(Color(colorButton))
                .cornerRadius(30)
                .shadow(radius: 5)
        }
    }
}

struct ButtonMoreUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMoreUIView(titleButton: "Mais", colorButton: "ColorRobotica") {
            print("bt_clicado")
        }
    }
}
