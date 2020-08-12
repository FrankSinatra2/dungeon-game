module Main exposing (..)

import Mechanics.Adventurer exposing (..)
import Mechanics.Bag exposing (..)
import Mechanics.Direction exposing (..)
import Mechanics.Loot exposing (..)
import Mechanics.Monster exposing (..)
import Mechanics.Movement exposing (..)
import Mechanics.Position exposing (..)
import Mechanics.Stats exposing (..)
import Mechanics.Tool exposing (..)
import Mechanics.Trapdoor exposing (..)
import Mechanics.Wall exposing (..)
import Mechanics.Weapon exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]