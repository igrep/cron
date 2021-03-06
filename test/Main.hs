module Main
    ( main
    ) where



-------------------------------------------------------------------------------
import           SpecHelper
import qualified System.Test.Cron
import qualified System.Test.Cron.Describe
import qualified System.Test.Cron.Parser
import qualified System.Test.Cron.Schedule
import qualified System.Test.Cron.Internal.Schedule
-------------------------------------------------------------------------------


main :: IO ()
main = defaultMain $ testGroup "cron"
  [ System.Test.Cron.tests
  , System.Test.Cron.Describe.tests
  , System.Test.Cron.Parser.tests
  , System.Test.Cron.Schedule.tests
  , System.Test.Cron.Internal.Schedule.tests
  ]
