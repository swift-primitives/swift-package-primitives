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

/// Namespace for Swift package-domain identifier primitives.
///
/// `Package` is the generic noun for the Swift-package-manifest
/// domain entity. The namespace hosts typed identifiers — at v1.0.0,
/// the `Package.Name` typealias over `Tagged<Package, Swift.String>`.
///
/// Per the typed-identifier-naming framework, the namespace is
/// generic rather than brand-flavored — `Package` not `SwiftPM.Package`
/// — so cross-ecosystem tooling (registry analyzers, dependency
/// tooling, manifest generators) can adopt the type without
/// importing a consumer-flavored surface.
///
/// Future siblings (additive per framework Axiom 3) MAY include
/// `Package.Identity` (registry scope.name composite per SE-0292),
/// `Package.Manifest` (richer manifest model), `Package.Dependency`
/// (typed dependency representation).
public enum Package: Swift.Sendable {}
