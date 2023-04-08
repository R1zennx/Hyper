//
//  ListView.swift
//  Hyper
//
//  Created by Kevin Treial on 08.04.2023.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    
    var body: some View {
        NavigationView {
            List(dataManager.accounts, id: \.id) { account in
                Text(account.gender)
            }
            .navigationTitle("Accounts")
            .navigationBarItems(trailing: Button(action: {
                showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup) {
                NewAccountView()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
          //  .environmentObject(DataManager)
    }
}
