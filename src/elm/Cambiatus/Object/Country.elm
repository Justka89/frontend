-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Cambiatus.Object.Country exposing (..)

import Cambiatus.InputObject
import Cambiatus.Interface
import Cambiatus.Object
import Cambiatus.Scalar
import Cambiatus.ScalarCodecs
import Cambiatus.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


id : SelectionSet Cambiatus.ScalarCodecs.Id Cambiatus.Object.Country
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Cambiatus.ScalarCodecs.codecs |> Cambiatus.Scalar.unwrapCodecs |> .codecId |> .decoder)


name : SelectionSet String Cambiatus.Object.Country
name =
    Object.selectionForField "String" "name" [] Decode.string


states : SelectionSet decodesTo Cambiatus.Object.State -> SelectionSet (List decodesTo) Cambiatus.Object.Country
states object_ =
    Object.selectionForCompositeField "states" [] object_ (identity >> Decode.list)
