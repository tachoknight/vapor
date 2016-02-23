//
//  LogDriver.swift
//  Vapor
//
//  Created by Matthew on 21/02/2016.
//  Copyright © 2016 Tanner Nelson. All rights reserved.
//

import Foundation

/* Logger protocol. Custom loggers must conform 
 to this protocol
 */
public protocol Logger {
    func log(level: LogLevel, message: String)
}

/*
 Logs to the console
 
 - parameter level: LogLevel enum
 - parameter message: String to log
*/
public class ConsoleLogger: Logger {
    
    public func log(level: LogLevel, message: String) {
        let date = NSDate()
        print("[\(date)] \(level): \(message)")
    }
}
