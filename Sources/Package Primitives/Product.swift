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

/// Namespace for Swift package product-domain identifier primitives.
///
/// `Product` is the generic noun for a Swift package product —
/// a library, executable, or plugin emitted by a Swift package.
/// The namespace hosts typed identifiers — at v1.0.0, the
/// `Product.Name` typealias over `Tagged<Product, Swift.String>`.
///
/// Per the typed-identifier-naming framework, the namespace is
/// top-level (a sibling to `Package` and `Target`) rather than
/// nested under `Package`. Product names are addressable
/// independently of specific-package context (`swift run --product
/// X` works without `--package` qualification when the resolution
/// is unambiguous); the typed identifier reflects that
/// independence.
///
/// Future siblings (additive per framework Axiom 3) MAY include
/// `Product.Kind` (`.library | .executable | .plugin`),
/// `Product.LibraryType` (`.static | .dynamic | .automatic`).
public enum Product: Swift.Sendable {}
