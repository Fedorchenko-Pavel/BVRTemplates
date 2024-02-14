//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

enum VARIABLE_moduleName:identifier___Result {
    case success(SomeModel)
    case errorMessage(String?)
}

class VARIABLE_moduleName:identifier___Request: PRequest {
    var path: URLPath = .someCase // FIXME: Add your URLPath to enum and init it here.
    var response: ((NetworkResult) -> Void)?
    var userIgnoringError: Bool?
    var method: HTTPMethod = .post
    var needPrintLogs: Bool?
    var body: HTTPBody?
    var secureData: SecureRequestData?
    init(someParam: String, resultCallback: @escaping ((VARIABLE_moduleName:identifier___Result) -> Void)) { // FIXME: Remove or change "someParam" to yours input params.
        body = [
            "someParam": someParam,
        ]
        response = { response in
            switch response {
            case .success(let data):
                do {
                    let model = try JSONDecoder().decode(SomeModel.self, from: data)
                    resultCallback(.success(model))
                } catch let error { resultCallback(.errorMessage(error.localizedDescription)) }
            default: resultCallback(.errorMessage(nil))
            }
        }
    }
}

// FIXME: Move this model structure to your flow when this request called
struct SomeModel: Codable {
    let value: String?
}
