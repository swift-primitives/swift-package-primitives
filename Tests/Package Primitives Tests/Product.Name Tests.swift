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

@Suite("Product.Name")
struct ProductNameTests {
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

    @Test
    func `Spaces are accepted (institute convention)`() {
        let name: Product.Name = "Tagged Primitives Standard Library Integration"
        #expect(name.underlying == "Tagged Primitives Standard Library Integration")
    }
}
