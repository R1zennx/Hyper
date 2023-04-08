//
//  DataManager.swift
//  Hyper
//
//  Created by Kevin Treial on 08.04.2023.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    @Published var accounts: [Account] = []
    
    init() {
        fetchAccounts()
    }
    
    func fetchAccounts() {
        accounts.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Accounts")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let gender = data["gender"] as? String ?? ""
                    
                    let account = Account(id: id, gender: gender)
                    self.accounts.append(account)
                }
            }
        }
    }
    
    func addAccount(accountGender: String) {
        let db = Firestore.firestore()
        let ref = db.collection("Accounts").document(accountGender)
        
        ref.setData(["gender": accountGender, "id" : 99999]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}
