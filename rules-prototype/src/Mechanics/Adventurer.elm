module Mechanics.Adventurer exposing (..)

import Mechanics.Loot exposing (Loot)
import Mechanics.Tool exposing (Tool)
import Mechanics.Weapon exposing (Weapon)
import Mechanics.Position exposing (Position)
import Mechanics.Bag exposing (Bag)
import Mechanics.Direction exposing (Direction)
import Mechanics.Movement exposing (Movement)
import Mechanics.Stats exposing (Stats, StatsEvent)

type alias Adventurer =
    { position : Position
    , backpack : Bag
    , weaponSlot : Maybe Weapon
    , toolSlot : Maybe Tool 
    , stats : Stats
    , experience : Int
    , facing : Direction
    , movement : Movement
    }

type AdventurerEvent
    = GainExperience Int
    | TakeDamage Int
    | Spawns Position Bag

type AdventurerAction
    = Idle 
    | Walk Direction
    | Run Direction
    | Turn Direction
    | Attack
    | PickUp
    | Use
    | Level StatsEvent
    | Die
    | Activate



    