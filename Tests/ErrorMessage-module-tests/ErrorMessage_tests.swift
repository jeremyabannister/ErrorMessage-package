//
//  ErrorMessage_tests.swift
//
//
//  Created by Jeremy Bannister on 6/13/24.
//

///
extension ErrorMessage_tests {
    
    ///
    func test_existence() {
        let _: ErrorMessage
    }
    
    ///
    func test_conformances() {
        ifGivenSubject {
            $0.proofOfConformanceTo_Codable()
            $0.proofOfConformanceTo_CustomStringConvertible()
            $0.proofOfConformanceTo_Hashable()
            $0.proofOfConformanceTo_LocalizedError()
        }
    }
    
    ///
    func test_message() {
        proofThatSubjectHasProperty(
            \.message,
             ofType: String.self
        )
    }
    
    ///
    func test_init_String() throws {
        
        ///
        let subject = ErrorMessage("testing123")
        let message = subject.message
        let expected = "testing123"
        
        ///
        guard message == expected else {
            throw ValuesWereNotEqual(
                expected: expected,
                found: message
            )
        }
    }
    
    ///
    func test_init_Error() throws {
        
        ///
        struct TestError: Error, CustomStringConvertible {
            var description: String {
                "test-error"
            }
        }
        
        ///
        let subject = ErrorMessage(TestError())
        let message = subject.message
        let expected = "test-error"
        
        ///
        guard message == expected else {
            throw ValuesWereNotEqual(
                expected: expected,
                found: message
            )
        }
    }
}

///
extension ErrorMessage_tests {
    
    ///
    func test_errorDescription() throws {
        
        ///
        proofThatSubjectHasProperty(
            \.errorDescription,
             ofType: String?.self
        )
        
        ///
        let subject = ErrorMessage("abc")
        let value = subject.errorDescription
        let expected = "abc"
        
        ///
        guard value == expected else {
            throw ValuesWereNotEqual(
                expected: expected,
                found: value
            )
        }
    }
}

///
extension ErrorMessage_tests {
    
    ///
    func test_description() throws {
        
        ///
        proofThatSubjectHasProperty(
            \.description,
             ofType: String.self
        )
        
        ///
        let subject = ErrorMessage("abc")
        let value = subject.description
        let expected = "abc"
        
        ///
        guard value == expected else {
            throw ValuesWereNotEqual(
                expected: expected,
                found: value
            )
        }
    }
}

///
private extension ErrorMessage_tests {
    
    ///
    struct ValuesWereNotEqual<Value: Equatable & Sendable>: Error {
        let expected: Value
        let found: Value
    }
}
