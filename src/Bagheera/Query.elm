-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bagheera.Query exposing (..)

import Bagheera.Object
import Bagheera.Scalar
import Bagheera.ScalarCodecs
import Graphql.Internal.Builder.Argument as Argument
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


type alias LinkRequiredArguments =
    { id : Bagheera.ScalarCodecs.Id }


{-| Get details about a link
-}
link :
    LinkRequiredArguments
    -> SelectionSet decodesTo Bagheera.Object.Link
    -> SelectionSet (Maybe decodesTo) RootQuery
link requiredArgs____ object____ =
    Object.selectionForCompositeField "link" [ Argument.required "id" requiredArgs____.id (Bagheera.ScalarCodecs.codecs |> Bagheera.Scalar.unwrapEncoder .codecId) ] object____ (Basics.identity >> Decode.nullable)


type alias LinksOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| List available links
-}
links :
    (LinksOptionalArguments -> LinksOptionalArguments)
    -> SelectionSet decodesTo Bagheera.Object.LinkConnection
    -> SelectionSet (Maybe decodesTo) RootQuery
links fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs____ =
            [ Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "links" optionalArgs____ object____ (Basics.identity >> Decode.nullable)
