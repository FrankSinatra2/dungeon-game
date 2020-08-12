module Mechanics.Position exposing (Position)

import Mechanics.Movement exposing (Movement)
import Mechanics.Direction exposing (Direction)

type alias Position =
    { x : Int
    , y : Int
    }


type PositionEvent
    = Move Direction Movement
    | Teleport Position