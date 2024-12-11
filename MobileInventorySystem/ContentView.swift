//
//  ContentView.swift
//  MobileInventorySystem
//
//  Created by rifqi triginandri on 03/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            ItemListView()
                .tabItem {
                    Label("Barang", systemImage: "list.dash")
                }
            
            AllTransactionView()
                .tabItem {
                    Label("Transaksi", systemImage: "doc.text")
                }

        }
        
    }
}

#Preview {
    ContentView()
}
