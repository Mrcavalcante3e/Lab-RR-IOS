//
//  ListaItensView.swift
//  LabCrieRR
//
//  Created by Lucas Cavalcante on 16/11/24.
//

import Foundation
import SwiftUI

struct Item: Identifiable{
    let id = UUID()
    let title: String
    let image: String
    let description: String
    let url: URL
}
