-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bespiral.Object.Transfer exposing (amount, communityId, createdAt, createdBlock, createdEosAccount, createdTx, fromId, memo, toId)

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


amount : SelectionSet String Bespiral.Object.Transfer
amount =
    Object.selectionForField "String" "amount" [] Decode.string


communityId : SelectionSet String Bespiral.Object.Transfer
communityId =
    Object.selectionForField "String" "communityId" [] Decode.string


createdAt : SelectionSet Bespiral.ScalarCodecs.DateTime Bespiral.Object.Transfer
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Bespiral.ScalarCodecs.codecs |> Bespiral.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


createdBlock : SelectionSet Int Bespiral.Object.Transfer
createdBlock =
    Object.selectionForField "Int" "createdBlock" [] Decode.int


createdEosAccount : SelectionSet String Bespiral.Object.Transfer
createdEosAccount =
    Object.selectionForField "String" "createdEosAccount" [] Decode.string


createdTx : SelectionSet String Bespiral.Object.Transfer
createdTx =
    Object.selectionForField "String" "createdTx" [] Decode.string


fromId : SelectionSet String Bespiral.Object.Transfer
fromId =
    Object.selectionForField "String" "fromId" [] Decode.string


memo : SelectionSet (Maybe String) Bespiral.Object.Transfer
memo =
    Object.selectionForField "(Maybe String)" "memo" [] (Decode.string |> Decode.nullable)


toId : SelectionSet String Bespiral.Object.Transfer
toId =
    Object.selectionForField "String" "toId" [] Decode.string
