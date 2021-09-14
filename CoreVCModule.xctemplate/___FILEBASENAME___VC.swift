//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___


import UIKit

final class ___VARIABLE_moduleName:identifier___VC: BaseViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    var viewModel: P___VARIABLE_moduleName:identifier___VM!
    
    // MARK: - Private properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.viewWillAppear()
    }
    
    // MARK: - Private methods
}
