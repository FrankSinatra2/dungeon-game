module Mechanics.Bag exposing (..)

import Mechanics.Loot exposing (Loot)
import Mechanics.Weapon exposing (Weapon)
import Mechanics.Tool exposing (Tool)

type alias Bag =
    { weapons : List Weapon
    , loot : List Loot
    , tools : List Tool
    }

type BagEvent
    = RetrieveWeapon Weapon
    | RetrieveLoot Loot
    | RetrieveTool Tool
    | StashWeapon Weapon
    | StashLoot Loot
    | StashTool Tool
