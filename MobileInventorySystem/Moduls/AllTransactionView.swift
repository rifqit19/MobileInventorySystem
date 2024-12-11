//
//  AllTransactionView.swift
//  MobileInventorySystem
//
//  Created by rifqi triginandri on 11/12/24.
//

import SwiftUI

struct AllTransactionView: View {
    
    @StateObject var viewModel = InventoryViewModel()
    
    var body: some View {
        NavigationView{
            if viewModel.transactions.isEmpty {
                VStack {
                    Text("Daftar Transaksi")
                        .font(.headline)
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "doc.text")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                        .padding()
                    
                    Text("Tidak ada Transaksi")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Text("Belum ada transaksi tercatat dari semua barang")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    
                    Spacer()
                }
            } else {
                VStack {
                    Text("Daftar Transaksi")
                        .font(.headline)
                        .bold()

                    List(viewModel.transactions) { transaction in
                        HStack(spacing: 8) {
                            VStack(alignment: .leading) {
                                Text(transaction.itemName)
                                    .font(.headline)
                                Text(transaction.date, style: .date)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            VStack{
                                Text(transaction.type)
                                    .font(.headline)
                                    .foregroundColor(transaction.type == "Masuk" ? .green : .red)
                                
                                Text(transaction.type == "Masuk" ? "+\(transaction.quantity)" : "-\(transaction.quantity)")
                                    .font(.title2)
                                    .foregroundColor(transaction.type == "Masuk" ? .green : .red)
                                
                            }


                        }
                        .padding(.vertical, 8)
                    }
                    .listStyle(PlainListStyle())

                } // end of vstack
            }
        }
        .onAppear {
            viewModel.loadTransactions()
        }
    }
}

#Preview {
    AllTransactionView()
}
