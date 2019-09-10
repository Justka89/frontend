-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bespiral.Object.Objective exposing (ActionsOptionalArguments, actions, createdAt, createdBlock, createdEosAccount, createdTx, creator, creatorId, description, id)

import Bespiral.InputObject
import Bespiral.Interface
import Bespiral.Object
import Bespiral.Scalar
import Bespiral.ScalarCodecs
import Bespiral.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


type alias ActionsOptionalArguments =
    { input : OptionalArgument Bespiral.InputObject.ActionsInput }


actions : (ActionsOptionalArguments -> ActionsOptionalArguments) -> SelectionSet decodesTo Bespiral.Object.Action -> SelectionSet (List decodesTo) Bespiral.Object.Objective
actions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { input = Absent }

        optionalArgs =
            [ Argument.optional "input" filledInOptionals.input Bespiral.InputObject.encodeActionsInput ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "actions" optionalArgs object_ (identity >> Decode.list)


createdAt : SelectionSet Bespiral.ScalarCodecs.DateTime Bespiral.Object.Objective
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Bespiral.ScalarCodecs.codecs |> Bespiral.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


createdBlock : SelectionSet Int Bespiral.Object.Objective
createdBlock =
    Object.selectionForField "Int" "createdBlock" [] Decode.int


createdEosAccount : SelectionSet String Bespiral.Object.Objective
createdEosAccount =
    Object.selectionForField "String" "createdEosAccount" [] Decode.string


createdTx : SelectionSet String Bespiral.Object.Objective
createdTx =
    Object.selectionForField "String" "createdTx" [] Decode.string


creator : SelectionSet decodesTo Bespiral.Object.Profile -> SelectionSet decodesTo Bespiral.Object.Objective
creator object_ =
    Object.selectionForCompositeField "creator" [] object_ identity


creatorId : SelectionSet String Bespiral.Object.Objective
creatorId =
    Object.selectionForField "String" "creatorId" [] Decode.string


description : SelectionSet String Bespiral.Object.Objective
description =
    Object.selectionForField "String" "description" [] Decode.string


id : SelectionSet Int Bespiral.Object.Objective
id =
    Object.selectionForField "Int" "id" [] Decode.int
