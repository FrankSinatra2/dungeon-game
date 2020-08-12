module Mechanics.Tool exposing (Tool)

import Mechanics.Position exposing (Position)

type Tool
    = Shovel
    | Lockpick
    | Compass

type alias ToolPile = 
    { position : Position
    , tool : Tool
    }
-- The mechanic is that Tools exist