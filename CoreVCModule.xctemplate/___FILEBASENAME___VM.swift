//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift
import RxCocoa

protocol P___VARIABLE_moduleName:identifier___VM {
    
    // MARK: - Injections -
    var disposeBag: DisposeBag { get }
    var router: AppRouter! { get set }
    var repository: P___VARIABLE_moduleName:identifier___Repository! { get set }
    // MARK: - Observers -
    // MARK: - Properties -
    // MARK: - Injection did finish -
    func injectionDidFinish()
    // MARK: - View Flow -
    func viewDidLoad()
    func viewWillAppear()
}

final class ___VARIABLE_moduleName:identifier___VM: P___VARIABLE_moduleName:identifier___VM {
    
    // MARK: - Injections -
    var disposeBag = DisposeBag()
    var router: AppRouter!
    var repository: P___VARIABLE_moduleName:identifier___Repository!
    
    // MARK: - Observers -
    // MARK: - Properties -
    private let scheduler: PScheduler
    private let networkManager: PNetworkManager
    
    init(networkManager: PNetworkManager = NetworkManager.shared, scheduler: PScheduler = Scheduler()) {
        self.scheduler = scheduler
        self.networkManager = networkManager
    }
    
    // MARK: - Injection did finish -
    func injectionDidFinish() {
        subscribeActions()
        subscribeRepository()
    }
    
    // MARK: - View Flow -
    func viewDidLoad() {}
    
    func viewWillAppear() {}
    
    // MARK: Private methods -
    private func subscribeActions() {}
    
    private func subscribeRepository() {}
}
