module Mechanics.Weapon exposing (Weapon, damage, fromWeapon, range)

import Mechanics.Position exposing (Position)

type Weapon
    = LongSword
    | Dagger
    | Bow
    | Unarmed

type alias WeaponPile = 
    { position : Position 
    , weapon : Weapon 
    }

-- The mechanic is that Weapons exist

range : Weapon -> Int
range weapon =
    case weapon of
       Dagger -> 1
       LongSword -> 2
       Bow -> 4
       Unarmed -> 0

damage : Weapon -> Int
damage _ = 1

fromWeapon : Weapon -> String
fromWeapon weapon =
    case weapon of
       LongSword -> "Long Sword"
       Dagger -> "Dagger"
       Bow -> "Bow"
       Unarmed -> "Unarmed"