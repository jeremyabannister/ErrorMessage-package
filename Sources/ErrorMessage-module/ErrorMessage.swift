//
//  ErrorMessage.swift
//
//
//  Created by Jeremy Bannister on 6/13/24.
//

///
public struct ErrorMessage:
    Codable,
    CustomStringConvertible,
    Hashable,
    LocalizedError {
    
    ///
    public let message: String
    
    ///
    public init(_ message: String) {
        self.message = message
    }
    
    ///
    public init(_ error: any Error) {
        self.init("\(error)")
    }
}

///
extension ErrorMessage {
    
    ///
    public var errorDescription: String? {
        message
    }
}

///
extension ErrorMessage {
    
    ///
    public var description: String {
        message
    }
}

