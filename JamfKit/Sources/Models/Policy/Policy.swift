//
//  Policy.swift
//  JamfKit
//
//  Copyright © 2017-present JamfKit. All rights reserved.
//  Licensed under the MIT License. See LICENSE file in the project root for full license information.
//

/// Reprents as logical policy that can be applied to any hardware element managed by Jamf.
@objc(JMFKPolicy)
public final class Policy: NSObject, Requestable {

    // MARK: - Constants

    static let GeneralKey = "general"

    // MARK: - Properties

    @objc
    public var general: PolicyGeneral

    public override var description: String {
        return "[\(String(describing: type(of: self)))][\(general.identifier) - \(general.name)]"
    }

    // MARK: - Initialization

    public init?(json: [String: Any], node: String = "") {
        guard
            let generalNode = json[Policy.GeneralKey] as? [String: Any],
            let general = PolicyGeneral(json: generalNode)
            else {
                return nil
        }

        self.general = general
    }

    // MARK: - Functions

    public func toJSON() -> [String: Any] {
        var json = [String: Any]()

        json[Policy.GeneralKey] = general.toJSON()

        return json
    }
}
