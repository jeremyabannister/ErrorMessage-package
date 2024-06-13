//
//  String_asErrorMessage.swift
//
//
//  Created by Jeremy Bannister on 6/13/24.
//

///
extension String {
    
    ///
    public func asErrorMessage() -> ErrorMessage {
        ErrorMessage(self)
    }
}
