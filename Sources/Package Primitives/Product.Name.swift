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

extension Product {
    /// A typed, stable identifier for a Swift package product's `name:` field.
    ///
    /// `Product.Name` is `Tagged<Product, Swift.String>` — the value is
    /// a `String` (e.g., `"Package Primitives"`) but its type carries
    /// the product-identity at compile time. Mixing product names with
    /// package names or target names is rejected at the type system,
    /// not at runtime.
    ///
    /// Construction via the `ExpressibleByStringLiteral` conformance
    /// shipped by `swift-tagged-primitives`'s standard-library-integration
    /// target:
    ///
    /// ```swift
    /// let name: Product.Name = "Package Primitives"
    /// ```
    ///
    /// Validation: none at construction time. Upstream SwiftPM enforces
    /// only emptiness for product names (see
    /// `Sources/PackageLoading/PackageBuilder.swift:1576-1578` in
    /// `swiftlang/swift-package-manager`); institute consumers inherit
    /// the same permissive contract. Product names commonly contain
    /// spaces per institute convention (e.g., `"Tagged Primitives
    /// Standard Library Integration"`); the permissive contract
    /// preserves that usage.
    public typealias Name = Tagged<Product, Swift.String>
}
