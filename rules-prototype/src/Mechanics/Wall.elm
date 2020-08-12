module Mechanics.Wall exposing (..)

import Mechanics.Position exposing (Position)

type alias Wall = 
    { northeastCorner : Position
    , northwestCorner : Position
    , southeastCorner : Position
    , southwestCorner : Position
    }