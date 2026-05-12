// ===----------------------------------------------------------------------===//
//
// This source file is part of the swift-package-primitives open source project
//
// Copyright (c) 2026 Coen ten Thije Boonkkamp and the swift-package-primitives project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// ===----------------------------------------------------------------------===//

import Testing
import Package_Primitives

@Suite("Target.Name")
struct TargetNameTests {
    @Test
    func `Constructs from string literal`() {
        let name: Target.Name = "Package Primitives"
        #expect(name.underlying == "Package Primitives")
    }

    @Test
    func `Equal values compare equal`() {
        let a: Target.Name = "Package Primitives"
        let b: Target.Name = "Package Primitives"
        #expect(a == b)
    }

    @Test
    func `Hashable conformance distinguishes values`() {
        var set: Swift.Set<Target.Name> = []
        set.insert("Package Primitives")
        set.insert("Package Primitives Tests")
        #expect(set.count == 2)
    }

    @Test
    func `Type discrimination — Package.Name and Target.Name are distinct types`() {
        let pkg: Package.Name = "swift-primitives"
        let tgt: Target.Name = "Package Primitives"
        #expect(pkg.underlying == "swift-primitives")
        #expect(tgt.underlying == "Package Primitives")
    }
}
