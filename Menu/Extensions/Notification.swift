//
//  Notification.swift
//  Menu
//
//  Created by beehive-iOS on 6/19/22.
//

import Foundation
extension Notification.Name {
    static let itemHasBeenAdded: Notification.Name = Notification.Name("CLItemHasBeenAdded")
    static let cartCountHasBeenAdded: Notification.Name = Notification.Name("CLCartCountHasBeenAdded")
    static let itemHasBeenRemoved: Notification.Name = Notification.Name("CLItemHasBeenRemoved")
}
