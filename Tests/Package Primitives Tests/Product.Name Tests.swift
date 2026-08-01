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

// `Product.Name` is `Tagged<Product, String>` — an unspecialized-generic
// nested-type host: an extension at this concrete specialization compiles
// but its nested `@Suite` types are shared across every `Tagged<Tag, _>`
// specialization (collides with `Package.Name`'s and `Target.Name`'s own
// suites). This uses the top-level backticked-name fallback instead.
@Suite
struct `Product.Name Tests` {
    @Suite struct Unit {}
    @Suite struct `Edge Case` {}
    @Suite struct Integration {}
}

extension `Product.Name Tests`.Unit {
    @Test
    func `Constructs from string literal`() {
        let name: Product.Name = "Package Primitives"
        #expect(name.underlying == "Package Primitives")
    }

    @Test
    func `Equal values compare equal`() {
        let a: Product.Name = "Package Primitives"
        let b: Product.Name = "Package Primitives"
        #expect(a == b)
    }

    @Test
    func `Hashable conformance distinguishes values`() {
        var set: Swift.Set<Product.Name> = []
        set.insert("Package Primitives")
        set.insert("Version Primitives")
        set.insert("Package Primitives")
        #expect(set.count == 2)
    }
}

extension `Product.Name Tests`.`Edge Case` {
    @Test
    func `Spaces are accepted (institute convention)`() {
        let name: Product.Name = "Tagged Primitives Standard Library Integration"
        #expect(name.underlying == "Tagged Primitives Standard Library Integration")
    }
}
