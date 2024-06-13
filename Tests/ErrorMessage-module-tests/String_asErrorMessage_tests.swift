//
//  String_asErrorMessage_tests.swift
//
//
//  Created by Jeremy Bannister on 6/13/24.
//

///
extension String_tests {
    
    ///
    func test_asErrorMessage() throws {
        
        ///
        let subject = "abc".asErrorMessage()
        let expected = ErrorMessage("abc")
        
        ///
        guard subject == expected else {
            throw ErrorMessage("\(subject) was not equal to \(expected)")
        }
    }
}
