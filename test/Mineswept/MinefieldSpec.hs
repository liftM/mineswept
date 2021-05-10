module Mineswept.MinefieldSpec (spec) where

import Mineswept.Game (Parameters (..))
import Mineswept.Grid (Grid)
import Mineswept.Grid qualified as Grid
import Mineswept.Minefield (Tile (..), gridOf, makeMinefield)
import Test.Hspec (Spec, describe, it, pendingWith, shouldBe)

spec :: Spec
spec = do
  describe "makeMinefield" $ do
    it "deterministically constructs minefields given a seed" $ do
      gridOf (makeMinefield params) `shouldBe` minefieldGrid

  describe "reveal" $ do
    it "returns only one square when a mine is revealed" $ do
      pendingWith "not yet implemented"

    it "returns only one square when a hint is revealed" $ do
      pendingWith "not yet implemented"

    it "returns the zero-flood-fill and adjacent hints when a zero hint is revealed" $ do
      pendingWith "not yet implemented"

params :: Parameters
params =
  Parameters
    { width = 30,
      height = 16,
      version = 1,
      mineCount = 99,
      seed = 0
    }

minefieldGrid :: Grid Tile
minefieldGrid =
  Grid.fromList
    (30, 16)
    [ Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Mine,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Mine,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 2,
      Hint 2,
      Hint 1,
      Hint 2,
      Hint 2,
      Hint 2,
      Hint 1,
      Hint 0,
      Hint 3,
      Mine,
      Hint 1,
      Hint 2,
      Mine,
      Hint 3,
      Hint 2,
      Mine,
      Hint 2,
      Hint 2,
      Mine,
      Hint 3,
      Mine,
      Mine,
      Hint 2,
      Hint 0,
      Mine,
      Hint 3,
      Hint 2,
      Hint 2,
      Mine,
      Hint 3,
      Mine,
      Hint 3,
      Mine,
      Hint 2,
      Hint 1,
      Hint 3,
      Mine,
      Mine,
      Hint 4,
      Hint 1,
      Hint 2,
      Mine,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 1,
      Hint 2,
      Hint 2,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 3,
      Mine,
      Mine,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 2,
      Mine,
      Hint 1,
      Hint 0,
      Hint 1,
      Hint 2,
      Hint 3,
      Mine,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 2,
      Mine,
      Hint 3,
      Mine,
      Hint 2,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 2,
      Mine,
      Hint 4,
      Mine,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 3,
      Hint 3,
      Hint 3,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 1,
      Hint 3,
      Mine,
      Hint 3,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 2,
      Mine,
      Mine,
      Mine,
      Mine,
      Mine,
      Mine,
      Hint 2,
      Hint 1,
      Hint 3,
      Mine,
      Hint 4,
      Hint 3,
      Hint 2,
      Hint 1,
      Hint 0,
      Hint 2,
      Mine,
      Hint 5,
      Hint 6,
      Mine,
      Mine,
      Hint 2,
      Hint 3,
      Mine,
      Hint 3,
      Mine,
      Hint 4,
      Mine,
      Mine,
      Hint 2,
      Hint 0,
      Hint 1,
      Hint 2,
      Mine,
      Hint 3,
      Mine,
      Hint 4,
      Mine,
      Hint 2,
      Hint 1,
      Hint 2,
      Hint 2,
      Mine,
      Hint 4,
      Mine,
      Hint 3,
      Hint 1,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 3,
      Hint 3,
      Mine,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 2,
      Mine,
      Hint 3,
      Hint 2,
      Hint 2,
      Hint 1,
      Hint 2,
      Mine,
      Hint 2,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 2,
      Mine,
      Mine,
      Hint 2,
      Mine,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 1,
      Mine,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 2,
      Hint 4,
      Hint 4,
      Hint 3,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 2,
      Mine,
      Mine,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 3,
      Hint 2,
      Hint 1,
      Hint 2,
      Hint 1,
      Hint 2,
      Mine,
      Hint 1,
      Hint 1,
      Mine,
      Hint 3,
      Hint 3,
      Hint 3,
      Hint 1,
      Hint 2,
      Mine,
      Mine,
      Mine,
      Mine,
      Hint 2,
      Mine,
      Hint 4,
      Hint 3,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 2,
      Mine,
      Hint 2,
      Hint 1,
      Hint 3,
      Mine,
      Hint 5,
      Hint 2,
      Hint 2,
      Hint 3,
      Hint 2,
      Mine,
      Mine,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 2,
      Mine,
      Hint 1,
      Hint 2,
      Mine,
      Hint 3,
      Hint 1,
      Mine,
      Hint 2,
      Hint 3,
      Hint 4,
      Hint 3,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 3,
      Mine,
      Hint 1,
      Hint 3,
      Mine,
      Mine,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 3,
      Mine,
      Hint 1,
      Hint 3,
      Mine,
      Hint 3,
      Hint 2,
      Mine,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 2,
      Mine,
      Hint 1,
      Mine,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 3,
      Hint 3,
      Mine,
      Hint 1,
      Hint 1,
      Hint 3,
      Hint 3,
      Hint 1,
      Hint 2,
      Hint 3,
      Hint 2,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 1,
      Mine,
      Mine,
      Mine,
      Hint 3,
      Hint 2,
      Hint 2,
      Mine,
      Mine,
      Hint 0,
      Hint 1,
      Mine,
      Mine,
      Hint 3,
      Mine,
      Hint 2,
      Hint 3,
      Hint 3,
      Hint 4,
      Hint 2,
      Hint 2,
      Mine,
      Hint 4,
      Hint 5,
      Hint 4,
      Hint 0,
      Hint 1,
      Hint 3,
      Mine,
      Hint 4,
      Hint 3,
      Mine,
      Hint 2,
      Mine,
      Hint 1,
      Hint 1,
      Hint 2,
      Hint 3,
      Mine,
      Mine,
      Mine,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 2,
      Mine,
      Hint 2,
      Hint 1,
      Hint 2,
      Hint 1,
      Hint 1,
      Hint 2,
      Mine,
      Hint 5,
      Hint 4,
      Hint 5,
      Hint 3,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Hint 4,
      Mine,
      Mine,
      Mine,
      Hint 2,
      Mine,
      Hint 1,
      Mine,
      Hint 1,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 0,
      Hint 1,
      Mine,
      Mine,
      Hint 4,
      Hint 2,
      Hint 2,
      Hint 1
    ]
