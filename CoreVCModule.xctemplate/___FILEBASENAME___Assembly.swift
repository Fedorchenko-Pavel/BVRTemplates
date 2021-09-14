//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Swinject
import SwinjectAutoregistration

final class ___VARIABLE_moduleName:identifier___Assembly: Assembly {
    
    func assemble(container: Container) {
        container.autoregister(P___VARIABLE_moduleName:identifier___VM.self, initializer: ___VARIABLE_moduleName:identifier___VM.init)
        container.autoregister(P___VARIABLE_moduleName:identifier___Repository.self, initializer: ___VARIABLE_moduleName:identifier___Repository.init).inObjectScope(.container)
        
        container.xibInitCompleted(___VARIABLE_moduleName:identifier___VC.self) { (resolver, controller) in
            var viewModel = resolver.resolve(P___VARIABLE_moduleName:identifier___VM.self)
            let router: AppRouter? = resolver.resolve(AppRouter.self)
            let repository = resolver.resolve(P___VARIABLE_moduleName:identifier___Repository.self)
            viewModel?.router = router
            viewModel?.repository = repository
            controller.viewModel = viewModel
            viewModel?.injectionDidFinish()
        }
    }
}
