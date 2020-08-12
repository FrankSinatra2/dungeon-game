module Mechanics.Loot exposing (Loot, value, fromLoot, Gem, PreciousMetal)

import Mechanics.Position exposing (Position)

type Gem
    = Amethyst
    | Ruby
    | Sapphire
    | Elmerald

type PreciousMetal
    = Bronze
    | Silver
    | Gold
    | Platinum

type Loot 
    = PreciousMetal PreciousMetal
    | Gem Gem

type alias LootPile = 
    { position : Position
    , loot : Loot
    }

value : Loot -> Int
value loot =
    case loot of 
        PreciousMetal m ->
            case m of
                Bronze -> 1
                Silver -> 2
                Gold -> 3
                Platinum -> 4
        Gem g ->
            case g of
               Amethyst -> 1
               Ruby -> 2
               Sapphire -> 2
               Elmerald -> 3

fromLoot : Loot -> String
fromLoot loot = 
    case loot of
        PreciousMetal _ -> "M"
        Gem _ -> "G"