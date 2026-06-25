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
/// `Package` is the generic noun for the package-manifest domain
/// entity. The namespace hosts typed identifiers only — the
/// `Package.Name` typealias over `Tagged<Package, Swift.String>`.
///
/// Per the typed-identifier-naming framework, the namespace is
/// generic rather than brand-flavored — `Package` not `SwiftPM.Package`
/// — so cross-ecosystem tooling (registry analyzers, dependency
/// tooling, manifest generators) can adopt the types without
/// importing a consumer-flavored surface.
///
/// SwiftPM-flavored types — `Package.Dependency`,
/// `Package.Requirement`, `Package.Identity`, and the richer
/// manifest model — live at L2 in `swift-spm-standard`, which
/// re-extends this namespace with the SwiftPM-specific shapes
/// per `swift-institute/Research/swift-package-domain-l1-l2-split.md`
/// v1.0.0 (2026-05-14).
public enum Package: Swift.Sendable {}
