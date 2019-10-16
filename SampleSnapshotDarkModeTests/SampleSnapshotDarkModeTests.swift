//
//  SampleSnapshotDarkModeTests.swift
//  SampleSnapshotDarkModeTests
//
//  Created by Felipe Espinoza on 14/10/2019.
//  Copyright © 2019 Felipe Espinoza. All rights reserved.
//

import XCTest
@testable import SampleSnapshotDarkMode
import SnapshotTesting
import Foundation

class SampleSnapshotDarkModeTests: XCTestCase {
    let viewController = ViewController()

    func testViewControllerLightMode() {
        assertSnapshot(matching: viewController, as: .image(on: .iPhoneX(.portrait)))
    }

    func testViewControllerDarkMode() {
        assertSnapshot(matching: viewController, as: .image(on: .iPhoneX(.portrait, .dark)))
    }
}
