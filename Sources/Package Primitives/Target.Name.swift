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

extension Target {
    /// A typed, stable identifier for a Swift package target's `name:` field.
    ///
    /// `Target.Name` is `Tagged<Target, Swift.String>` — the value is a
    /// `String` (e.g., `"Package Primitives"`) but its type carries the
    /// target-identity at compile time. Mixing target names with package
    /// names or product names is rejected at the type system, not at
    /// runtime.
    ///
    /// Construction via the `ExpressibleByStringLiteral` conformance
    /// shipped by `swift-tagged-primitives`'s standard-library-integration
    /// target:
    ///
    /// ```swift
    /// let name: Target.Name = "Package Primitives"
    /// ```
    ///
    /// Validation: none at construction time. Upstream SwiftPM enforces
    /// only emptiness for target names (see
    /// `Sources/PackageLoading/PackageBuilder.swift:837-844` in
    /// `swiftlang/swift-package-manager`); institute consumers inherit
    /// the same permissive contract.
    public typealias Name = Tagged<Target, Swift.String>
}
