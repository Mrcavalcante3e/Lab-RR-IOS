//
//  testView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 08/11/24.
//

import SwiftUI

struct testView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("LABCRIE-RR")
                    .foregroundColor(Color.white)
                    .font(.title2)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                Rectangle()
                    .fill(Color.accentColor)
                    .frame(height: 50)
                    .padding(.top, -10)
                Spacer()
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(UIColor.systemGray6))
            VStack{
                GridView()
                Spacer()
            }.padding(.top, 80)
        }
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
