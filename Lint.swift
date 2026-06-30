// swift-linter-tools-version: 0.1
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

// Shape-γ unified consumer manifest per
// swift-institute/Research/2026-05-12-swift-linter-unified-consumer-manifest.md.
//
// swift-package-primitives is a Tagged-newtype consumer (Package.Name /
// Product.Name / Target.Name are typealiases of Tagged<_, Swift.String>)
// rather than a brand-owner, so it activates the full primitives bundle —
// no brand-owner carve-outs apply.

import Linter
import Linter_Primitives_Rules

Lint.run(dependencies: [
    .package(
        url: "https://github.com/swift-primitives/swift-primitives-linter-rules.git",
        branch: "main",
        products: ["Linter Primitives Rules"]
    ),
]) {
    Lint.Rule.Bundle.primitives
}
