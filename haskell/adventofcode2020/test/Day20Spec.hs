module Day20Spec (spec) where

import Day20 (part1, part2)
import Test.Hspec

input =
  "Tile 2311:\n\
  \..##.#..#.\n\
  \##..#.....\n\
  \#...##..#.\n\
  \####.#...#\n\
  \##.##.###.\n\
  \##...#.###\n\
  \.#.#.#..##\n\
  \..#....#..\n\
  \###...#.#.\n\
  \..###..###\n\
  \\n\
  \Tile 1951:\n\
  \#.##...##.\n\
  \#.####...#\n\
  \.....#..##\n\
  \#...######\n\
  \.##.#....#\n\
  \.###.#####\n\
  \###.##.##.\n\
  \.###....#.\n\
  \..#.#..#.#\n\
  \#...##.#..\n\
  \\n\
  \Tile 1171:\n\
  \####...##.\n\
  \#..##.#..#\n\
  \##.#..#.#.\n\
  \.###.####.\n\
  \..###.####\n\
  \.##....##.\n\
  \.#...####.\n\
  \#.##.####.\n\
  \####..#...\n\
  \.....##...\n\
  \\n\
  \Tile 1427:\n\
  \###.##.#..\n\
  \.#..#.##..\n\
  \.#.##.#..#\n\
  \#.#.#.##.#\n\
  \....#...##\n\
  \...##..##.\n\
  \...#.#####\n\
  \.#.####.#.\n\
  \..#..###.#\n\
  \..##.#..#.\n\
  \\n\
  \Tile 1489:\n\
  \##.#.#....\n\
  \..##...#..\n\
  \.##..##...\n\
  \..#...#...\n\
  \#####...#.\n\
  \#..#.#.#.#\n\
  \...#.#.#..\n\
  \##.#...##.\n\
  \..##.##.##\n\
  \###.##.#..\n\
  \\n\
  \Tile 2473:\n\
  \#....####.\n\
  \#..#.##...\n\
  \#.##..#...\n\
  \######.#.#\n\
  \.#...#.#.#\n\
  \.#########\n\
  \.###.#..#.\n\
  \########.#\n\
  \##...##.#.\n\
  \..###.#.#.\n\
  \\n\
  \Tile 2971:\n\
  \..#.#....#\n\
  \#...###...\n\
  \#.#.###...\n\
  \##.##..#..\n\
  \.#####..##\n\
  \.#..####.#\n\
  \#..#.#..#.\n\
  \..####.###\n\
  \..#.#.###.\n\
  \...#.#.#.#\n\
  \\n\
  \Tile 2729:\n\
  \...#.#.#.#\n\
  \####.#....\n\
  \..#.#.....\n\
  \....#..#.#\n\
  \.##..##.#.\n\
  \.#.####...\n\
  \####.#.#..\n\
  \##.####...\n\
  \##..#.##..\n\
  \#.##...##.\n\
  \\n\
  \Tile 3079:\n\
  \#.#.#####.\n\
  \.#..######\n\
  \..#.......\n\
  \######....\n\
  \####.#..#.\n\
  \.#...#.##.\n\
  \#.#####.##\n\
  \..#.###...\n\
  \..#.......\n\
  \..#.###..."

spec :: Spec
spec = do
  describe "Part1" $ do
    it ("returns 20899048083289 for " ++ input) $ do
      part1 input `shouldBe` "20899048083289"

  describe "Part2" $ do
    it ("returns 273 for " ++ input) $ do
      part2 input `shouldBe` "273"