//
//  Site.swift
//  JAMFKit
//
//  Copyright © 2017 JAMFKit. All rights reserved.
//

public final class Site: BaseObject {

    // MARK: - Properties

    public override var description: String {
        return "[\(String(describing: Site.self))][\(identifier). \(self.name)]"
    }
}
