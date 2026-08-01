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

import Package_Primitives
import Testing

// `Package.Name` is `Tagged<Package, String>` — an unspecialized-generic
// nested-type host: an extension at this concrete specialization compiles
// but its nested `@Suite` types are shared across every `Tagged<Tag, _>`
// specialization (collides with `Target.Name`'s and `Product.Name`'s own
// suites). This uses the top-level backticked-name fallback instead.
@Suite
struct `Package.Name Tests` {
    @Suite struct Unit {}
    @Suite struct `Edge Case` {}
    @Suite struct Integration {}
}

extension `Package.Name Tests`.Unit {
    @Test
    func `Constructs from string literal`() {
        let name: Package.Name = "swift-primitives"
        #expect(name.underlying == "swift-primitives")
    }

    @Test
    func `Equal values compare equal`() {
        let a: Package.Name = "swift-primitives"
        let b: Package.Name = "swift-primitives"
        #expect(a == b)
    }

    @Test
    func `Distinct values compare unequal`() {
        let a: Package.Name = "swift-primitives"
        let b: Package.Name = "swift-standards"
        #expect(a != b)
    }

    @Test
    func `Hashable conformance distinguishes values`() {
        var set: Swift.Set<Package.Name> = []
        set.insert("swift-primitives")
        set.insert("swift-standards")
        set.insert("swift-primitives")
        #expect(set.count == 2)
    }

    @Test
    func `Comparable orders lexicographically`() {
        let a: Package.Name = "swift-a"
        let b: Package.Name = "swift-b"
        #expect(a < b)
    }
}

extension `Package.Name Tests`.`Edge Case` {
    @Test
    func `Empty string is accepted (permissive contract)`() {
        let name: Package.Name = ""
        #expect(name.underlying.isEmpty)
    }

    @Test
    func `Spaces are accepted (permissive contract)`() {
        let name: Package.Name = "Some Name With Spaces"
        #expect(name.underlying == "Some Name With Spaces")
    }
}
