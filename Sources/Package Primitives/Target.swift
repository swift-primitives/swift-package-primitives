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

/// Namespace for Swift package target-domain identifier primitives.
///
/// `Target` is the generic noun for a Swift package target —
/// the unit of source-file aggregation that compiles into a
/// module. The namespace hosts typed identifiers — at v1.0.0, the
/// `Target.Name` typealias over `Tagged<Target, Swift.String>`.
///
/// Per the typed-identifier-naming framework, the namespace is
/// top-level (a sibling to `Package` and `Product`) rather than
/// nested. Target names appear in filesystem paths
/// (`Sources/<target>/`, `Tests/<target>/`) and in build-graph
/// addressing (`swift build --target X`), both of which are
/// independent of specific-package context; the typed identifier
/// reflects that independence.
///
/// Future siblings (additive per framework Axiom 3) MAY include
/// `Target.Kind` (`.regular | .test | .system | .binary | .macro
/// | .plugin`), `Target.ModuleName` (the underscored module name
/// derived from a space-bearing target name).
public enum Target: Swift.Sendable {}
