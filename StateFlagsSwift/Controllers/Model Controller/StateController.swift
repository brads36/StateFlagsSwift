//
//  State.swift
//  StateFlagsSwift
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

import Foundation

class StateController {
    
    // MARK: - Singleton
    static var sharedInstance = StateController()
    
    // MARK: - Source of Truth
    var states = [State]()
    
    init() {
        self.states = createAllStates()
    }
    
    func createAllStates() -> [State] {
        
        var stateArrayToReturn: [State] = []
        
        for stateFullName in StateHelper.states {
            guard let index = StateHelper.states.firstIndex(of: stateFullName) else { return []}
            
            let abbreviation = StateHelper.abbrevations[index]
            
            let state = State(abbreviation: stateFullName, name: abbreviation)
            
            stateArrayToReturn.append(state)
        }
        return stateArrayToReturn
    }
}
