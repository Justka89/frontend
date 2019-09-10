-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bespiral.Object.Profile exposing (TransfersOptionalArguments, account, avatar, bio, chatToken, chatUserId, communities, createdAt, createdBlock, createdEosAccount, email, interests, invitations, location, name, network, transfers)

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


account : SelectionSet String Bespiral.Object.Profile
account =
    Object.selectionForField "String" "account" [] Decode.string


avatar : SelectionSet (Maybe String) Bespiral.Object.Profile
avatar =
    Object.selectionForField "(Maybe String)" "avatar" [] (Decode.string |> Decode.nullable)


bio : SelectionSet (Maybe String) Bespiral.Object.Profile
bio =
    Object.selectionForField "(Maybe String)" "bio" [] (Decode.string |> Decode.nullable)


chatToken : SelectionSet (Maybe String) Bespiral.Object.Profile
chatToken =
    Object.selectionForField "(Maybe String)" "chatToken" [] (Decode.string |> Decode.nullable)


chatUserId : SelectionSet (Maybe String) Bespiral.Object.Profile
chatUserId =
    Object.selectionForField "(Maybe String)" "chatUserId" [] (Decode.string |> Decode.nullable)


communities : SelectionSet decodesTo Bespiral.Object.Community -> SelectionSet (Maybe (List (Maybe decodesTo))) Bespiral.Object.Profile
communities object_ =
    Object.selectionForCompositeField "communities" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


createdAt : SelectionSet (Maybe String) Bespiral.Object.Profile
createdAt =
    Object.selectionForField "(Maybe String)" "createdAt" [] (Decode.string |> Decode.nullable)


createdBlock : SelectionSet (Maybe Int) Bespiral.Object.Profile
createdBlock =
    Object.selectionForField "(Maybe Int)" "createdBlock" [] (Decode.int |> Decode.nullable)


createdEosAccount : SelectionSet (Maybe String) Bespiral.Object.Profile
createdEosAccount =
    Object.selectionForField "(Maybe String)" "createdEosAccount" [] (Decode.string |> Decode.nullable)


email : SelectionSet (Maybe String) Bespiral.Object.Profile
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


interests : SelectionSet (Maybe String) Bespiral.Object.Profile
interests =
    Object.selectionForField "(Maybe String)" "interests" [] (Decode.string |> Decode.nullable)


invitations : SelectionSet (Maybe (List (Maybe String))) Bespiral.Object.Profile
invitations =
    Object.selectionForField "(Maybe (List (Maybe String)))" "invitations" [] (Decode.string |> Decode.nullable |> Decode.list |> Decode.nullable)


location : SelectionSet (Maybe String) Bespiral.Object.Profile
location =
    Object.selectionForField "(Maybe String)" "location" [] (Decode.string |> Decode.nullable)


name : SelectionSet (Maybe String) Bespiral.Object.Profile
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


network : SelectionSet decodesTo Bespiral.Object.Network -> SelectionSet (Maybe (List (Maybe decodesTo))) Bespiral.Object.Profile
network object_ =
    Object.selectionForCompositeField "network" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


type alias TransfersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


transfers : (TransfersOptionalArguments -> TransfersOptionalArguments) -> SelectionSet decodesTo Bespiral.Object.TransferConnection -> SelectionSet (Maybe decodesTo) Bespiral.Object.Profile
transfers fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "transfers" optionalArgs object_ (identity >> Decode.nullable)
