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

extension Package {
    /// A typed, stable identifier for a Swift package's manifest-level `name:` field.
    ///
    /// `Package.Name` is `Tagged<Package, Swift.String>` — the value is a
    /// `String` (e.g., `"swift-primitives"`) but its type carries the
    /// package-identity at compile time. Mixing package names with
    /// product names or target names is rejected at the type system,
    /// not at runtime.
    ///
    /// Construction via the `ExpressibleByStringLiteral` conformance
    /// shipped by `swift-tagged-primitives`'s standard-library-integration
    /// target:
    ///
    /// ```swift
    /// let name: Package.Name = "swift-primitives"
    /// ```
    ///
    /// Validation: none at construction time. Upstream SwiftPM enforces
    /// only emptiness for manifest-level `Package(name:)` values (see
    /// `swiftlang/swift-package-manager` `Sources/PackageModel/Manifest/Manifest.swift`);
    /// institute consumers inherit the same permissive contract. The
    /// stricter SE-0292 registry-identifier rules apply to a separate
    /// type (`Package.Identity`, deferred to a future version).
    public typealias Name = Tagged<Package, Swift.String>
}
