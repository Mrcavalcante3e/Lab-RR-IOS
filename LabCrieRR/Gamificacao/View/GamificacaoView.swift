//
//  GamificacaoVIew.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 12/11/24.
//

import SwiftUI

struct GamificacaoView: View {
    
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
                .background(Color("ColorGamificacao"))
                
                Image("ic_gamificacao")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .shadow(color: .blue, radius: 15.0)
                
                Text("app")
                Text("metodologia_gamificacao").bold()
                    .font(.title)
               
                Spacer()
                ScrollView {
                    VStack (alignment: .leading){
                        Text(NSLocalizedString("content_gamificacao", comment: "content_gamificacao"))
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
                    .background(Color("ColorGamificacao"))
                    .cornerRadius(30)
                    .shadow(radius: 5)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.systemGray6))
        }
    }


struct GamificacaoView_Previews: PreviewProvider {
    static var previews: some View {
        GamificacaoView()
    }
}
