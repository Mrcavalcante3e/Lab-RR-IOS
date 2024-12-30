//
//  GridView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 08/11/24.
//

import SwiftUI

struct GridView: View {
        let items = [
            ("Robótica", "ic_robotica"),
            ("Gamificação", "ic_gamificacao"),
            ("Inteligência Artificial", "ic_inteligencia"),
            ("Aprendizagem Criativa", "ic_aprendizagem"),
            ("Educomunicação", "ic_educomunicacao"),
            ("Cultura Maker", "ic_cultura")
        ]

        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

    var body: some View {
            ZStack {
                VStack{
                    HStack{
                        Text("LABCRIE-RR")
                            .foregroundColor(Color.white)
                            .font(.title2)
                            .bold()
                            .padding(20)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .padding(20)
                            .foregroundColor(Color.white)
                            .font(.title2)
                            .symbolVariant(.circle.fill)
                        
                    }.background(Color("Bluedark"))
                    Rectangle()
                        .fill(Color("Blue"))
                        .frame(height: 20)
                        .padding(.top, -10)
                    Spacer()
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(UIColor.systemGray6))
                VStack (alignment: .center){
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items, id: \.0) { item in
                            NavigationLink(destination: DetailView(itemName: item.0)) {
                                VStack {
                                    Image(item.1)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 80)
                                    
                                    Text(item.0)
                                        .font(.headline)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.primary)
                                }
                                .padding()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }
                        }
                    }
                }.padding(.horizontal, 20)
            }
        }
    }

    struct DetailView: View {
        var itemName: String

        var body: some View {
            VStack {
                switch itemName {
                case "Robótica":
                    RoboticaView()
                case "Gamificação":
                    Link("SitesGoogle",
                        destination: URL(string: "https://sites.google.com/view/labcrie/home")!)
                case "Inteligência Artificial":
                    Text("Gamificacao")
                case "Aprendizagem Criativa":
                    Text("Gamificacao")
                case "Educomunicação":
                    Text("Gamificacao")
                case "Cultura Maker":
                    Text("Gamificacao")
                default:
                    Text("Conteúdo não encontrado")
                        .font(.title)
                        .foregroundColor(.red)
                }
            }
            .navigationTitle(itemName)
        }
    }

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
