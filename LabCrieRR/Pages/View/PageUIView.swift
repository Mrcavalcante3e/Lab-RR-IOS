//
//  PageUIView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 18/11/24.
//

import SwiftUI

struct PageUIView: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            HStack {
                    Label {
                        Text("goback")
                            .font(.headline)
                    } icon: {
                        Image(systemName: "chevron.left")
                            .padding(.leading)
                }
                    .padding()
                    .foregroundColor(.white)
                Spacer()
            }
            .background(Color("ColorRobotica"))
            
            Image("ic_robotica")
                .resizable()
                .frame(width: show ? 200:100, height: show ? 200:100)
                .shadow(color: .blue, radius: 15.0)
            
            Text("app")
            Text("metodologia_robotica").bold()
                .font(.title)
           
            Spacer()
            ScrollView {
                VStack (alignment: .leading){
                    Text(NSLocalizedString("content_robotica", comment: "content_robotica"))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .padding(10)
                        .background(Color(.white))
                        .cornerRadius(10)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .scrollIndicators(.hidden)
            }
                    Button {
                        show.toggle()
                    } label: {
                        Text("MAIS")
                            .bold()
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(width: 200)
                            .padding()
                            .background(Color("ColorRobotica"))
                            .cornerRadius(30)
                            .shadow(radius: 5)
                    }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color(UIColor.systemGray6))    }
}

struct PageUIView_Previews: PreviewProvider {
    static var previews: some View {
        PageUIView()
    }
}


