module Mechanics.Dungeon exposing (..)

import Mechanics.Adventurer exposing (Adventurer)
import Mechanics.Loot exposing (LootPile)
import Mechanics.Monster exposing (Monster)
import Mechanics.Tool exposing (ToolPile)
import Mechanics.Trapdoor exposing (Trapdoor)
import Mechanics.Wall exposing (Wall)
import Mechanics.Weapon exposing (WeaponPile)

type alias DungeonModel =
    { exit : Trapdoor
    , nextLayer : Dungeon
    , lootPiles : List LootPile
    , toolPiles : List ToolPile
    , weaponPiles : List WeaponPile
    , monsters : List Monsters 
    , adventurers : List Adventurer
    , walls : List Wall
    }
    
type Dungeon = GameState DungeonModel | EndOfGame

type DungeonEvent
    = TrapdoorEvent Mechanics.Trapdoor.TrapdoorAction
    | AdventurerEvent Mechanics.Adventurer.AdventurerAction
    | MonsterEvent Mechanics.Monster.MonsterAction