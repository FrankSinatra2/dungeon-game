module Mechanics.Monster exposing (..)

import Mechanics.Loot exposing (Loot)
import Mechanics.Tool exposing (Tool)
import Mechanics.Weapon exposing (Weapon)
import Mechanics.Position exposing (Position)
import Mechanics.Bag exposing (Bag)
import Mechanics.Direction exposing (Direction)
import Mechanics.Movement exposing (Movement)
import Mechanics.Stats exposing (Stats, StatsEvent)

type alias Monster =
    { position : Position
    , backpack : Bag
    , weaponSlot : Maybe Weapon
    , stats : Stats
    , facing : Direction
    , movement : Movement
    }

type MonsterEvent
    = TakeDamage Int
    | Spawns Position Bag

type MonsterAction
    = Idle 
    | Walk Direction
    | Run Direction
    | Turn Direction
    | Attack
    | Die