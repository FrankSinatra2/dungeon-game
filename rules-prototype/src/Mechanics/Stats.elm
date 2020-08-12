module Mechanics.Stats exposing (Stats, StatsEvent)

type alias Stats =
    { strength : Int
    , dexterity : Int
    , intelligence : Int
    , constitution : Int
    , health : Int
    , stamina : Int
    }


type StatsEvent
    = DecreaseStrength Int
    | DecreaseDexterity Int
    | DecreaseIntelligence Int
    | DecreaseConstitution Int
    | DecreaseHealth Int
    | DecreaseStamina Int
    | IncreaseStrength Int
    | IncreaseDexterity Int
    | IncreaseIntelligence Int
    | IncreaseConstitution Int
    | IncreaseHealth Int
    | IncreaseStamina Int

