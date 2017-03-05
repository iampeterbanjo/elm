module Main exposing (..)

import Html

longStringsToUpper : String -> Int -> String
longStringsToUpper name limit =
  let greaterThanTen =
    String.length name |> \a -> a > limit
  in
    if greaterThanTen then
      String.toUpper name
    else
      name

formatOutput : String -> String
formatOutput name =
  name ++ " - name length: " ++ toString (String.length name)

main : Html.Html msg
main =
  Html.text ((longStringsToUpper "Peter Banjo" 10) |> formatOutput)
