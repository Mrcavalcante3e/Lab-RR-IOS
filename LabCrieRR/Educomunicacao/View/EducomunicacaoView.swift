//
//  EducomunicacaoView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 12/11/24.
//

import SwiftUI

struct EducomunicacaoView: View {
    
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
                .background(Color("ColorEducomunicacao"))
                
                Image("ic_educomunicacao")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .shadow(color: .blue, radius: 15.0)
                
                Text("app")
                Text("metodologia_educomunicacao").bold()
                    .font(.title)
               
                Spacer()
                ScrollView {
                    VStack (alignment: .leading){
                        Text(NSLocalizedString("content_educomunicacao", comment: "content_educomunicacao"))
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
                
                Text("MAIS")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(width: 200)
                    .padding()
                    .background(Color("ColorEducomunicacao"))
                    .cornerRadius(30)
                    .shadow(radius: 5)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.systemGray6))
        }
    }

struct EducomunicacaoView_Previews: PreviewProvider {
    static var previews: some View {
        EducomunicacaoView()
    }
}
