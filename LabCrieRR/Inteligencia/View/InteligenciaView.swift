//
//  InteligenciaView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 12/11/24.
//

import SwiftUI

struct InteligenciaView: View {
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
                .background(Color("ColorInteligencia"))
                
                Image("ic_inteligencia")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .shadow(color: .blue, radius: 15.0)
                
                Text("app")
                Text("metodologia_inteligencia").bold()
                    .font(.title)
               
                Spacer()
                ScrollView {
                    VStack (alignment: .leading){
                        Text(NSLocalizedString("content_inteligencia", comment: "content_AI"))
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
                    .background(Color("ColorInteligencia"))
                    .cornerRadius(30)
                    .shadow(radius: 5)
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.systemGray6))
        }
    }

struct InteligenciaView_Previews: PreviewProvider {
    static var previews: some View {
        InteligenciaView()
    }
}
