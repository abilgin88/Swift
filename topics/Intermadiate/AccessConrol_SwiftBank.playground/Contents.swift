import UIKit

//:Securing SwiftBank
struct SwiftBank {
    private let password: String
    private var balance = 0.0
    let depositBonusRate = 0.01
    
    init(password: String) {
        self.password = password
        
    }
    private func isValid(enteredPassword: String) -> Bool {
        if enteredPassword == self.password {
            return true
            
        } else {
            return false
            
        }
        
    }
    
    private func finalDepositWithBonus(deposit: Double) -> Double {
        //deposit = deposit + depositBonusRate
    }
    
    func makeDeposit(depositAmount: Double) {
        depositWithBonus = finalDepositWithBonus(depositAmount)
    }
    
}

//:Enabling Deposits


