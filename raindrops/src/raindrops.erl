-module(raindrops).

-export([convert/1]).

-define(RULES, [{3, "Pling"}, {5, "Plang"}, {7, "Plong"}]).

convert(Number) -> 
  Drips = [ Drip || {Note, Drip} <- ?RULES, Number rem Note =:= 0],
  case Drips of
    [] -> integer_to_list(Number);
    _ -> lists:flatten(Drips)
  end.
