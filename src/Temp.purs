module Node.Temp (tempFileName) where

import Effect (Effect)

foreign import tempFileName :: String -> Effect String
