module Main (compile) where

import Prelude
import Effect (Effect)
import Node.ChildProcess (execFileSync, defaultExecSyncOptions)
import Node.FS.Sync (readTextFile, unlink)
import Node.Encoding (Encoding(UTF8))
import Node.Temp (tempFileName)

compile :: Effect String
compile = do
  outFileName <- tempFileName "purs-bundle"
  _ <- execFileSync "spago" [ "bundle-module", "--to", outFileName ] defaultExecSyncOptions
  compiled <- readTextFile UTF8 outFileName
  _ <- unlink outFileName
  pure compiled
