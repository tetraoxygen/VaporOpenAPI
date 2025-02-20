//
//  EventLoopFuture+OpenAPI.swift
//  App
//
//  Created by Mathew Polzin on 12/8/19.
//

import Foundation
import NIO
import OpenAPIKit
import OpenAPIReflection

extension EventLoopFuture: OpenAPIEncodedSchemaType where Value: OpenAPIEncodedSchemaType {
    /// Get the OpenAPISchema for for the value using a given encoder.
    /// - Parameters:
    ///   - encoder: The JSONEncoder to encode the schema with.
    /// - Returns: A JSONSchema object for the `EventLoopFuture`'s value.
    public static func openAPISchema(using encoder: JSONEncoder) throws -> JSONSchema {
        return try Value.openAPISchema(using: encoder)
    }
}
