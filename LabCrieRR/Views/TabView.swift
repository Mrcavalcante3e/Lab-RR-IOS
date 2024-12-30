//
//  TabView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 08/11/24.
//

import SwiftUI

struct TabBarExample: View {
    var body: some View {
        TabView {
            FirstTabView()
                .badge(2)
                .tabItem {
                    Label("First", systemImage: "swift")
                }
            
            SecondTabView()
                .tabItem {
                    Label("Second", systemImage: "tray.and.arrow.down.fill")
                }
            
            ThirdTabView()
                .badge("!")
                .tabItem {
                    Label("Third", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct FirstTabView: View {
    var body: some View {
        Text("First tab")
    }
}

struct SecondTabView: View {
    var body: some View {
        Text("Second tab")
    }
}

struct ThirdTabView: View {
    var body: some View {
        Text("Third tab")
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarExample()
    }
}
