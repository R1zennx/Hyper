//
//  NewAccountView.swift
//  Hyper
//
//  Created by Kevin Treial on 08.04.2023.
//

import SwiftUI

struct NewAccountView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newAccount = ""
    
    var body: some View {
        VStack {
            TextField("Account", text: $newAccount)
            
            Button {
                dataManager.addAccount(accountGender: newAccount)
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

struct NewAccountView_Previews: PreviewProvider {
    static var previews: some View {
        NewAccountView()
    }
}
