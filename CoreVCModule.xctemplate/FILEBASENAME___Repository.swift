//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import RxSwift
import RxCocoa

protocol P___VARIABLE_moduleName:identifier___Repository {}

final class VARIABLE_moduleName:identifier___Repository: P___VARIABLE_moduleName:identifier___Repository {
    
    private let scheduler: PScheduler
    private let networkManager: PNetworkManager
    
    init(networkManager: PNetworkManager = NetworkManager.shared, scheduler: PScheduler = Scheduler()) {
        self.scheduler = scheduler
        self.networkManager = networkManager
    }
}
