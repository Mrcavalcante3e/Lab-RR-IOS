import SwiftUI

struct ContentView: View {
    
    @State private var isPresentes = false
    
    var body: some View {
        TabView {
            HomeTab()
            //.badge(2)
                .tabItem {
                    Label("Início", systemImage: "house")
                
                }
            
            ContatosTab()
                .tabItem {
                    Label("Contatos", systemImage: "ellipsis.bubble")
                }
            
            MapsTab()
            //.badge("!")
                .tabItem {
                    Label("Mapa", systemImage: "map")
                }
            AvalieTab()
            //.badge("!")
                .tabItem {
                    Label("Avalie", systemImage: "list.bullet.rectangle")
                }
            }
        }
        struct HomeTab: View {
            var body: some View {
                GridView()
            }
        }
        struct ContatosTab: View {
            var body: some View {
                GamificacaoView()
            }
        }
        
        struct MapsTab: View {
            var body: some View {
                InteligenciaView()
            }
        }
    
        struct AvalieTab: View {
            var body: some View {
                AprendizagemView()
            }
        }
    
    }
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

