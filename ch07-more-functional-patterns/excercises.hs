module Excercises where

-- Variety pack

-- 1a (a, b) -> a
-- 1b [Char], no
-- 1c k1, k3

-- 2
f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))
