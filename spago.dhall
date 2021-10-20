{ name = "node-purescript-compiler"
, dependencies =
  [ "effect"
  , "node-buffer"
  , "node-child-process"
  , "node-fs"
  , "prelude"
  , "psci-support"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
