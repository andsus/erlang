-module(accumulate).

-export([accumulate/2]).



% accumulate(Fn, Ls) -> [Fn(X) || X <- Ls].

-spec accumulate(Fn::fun((T) -> U), Ls::[T]) -> [U].
accumulate(Fn, Ls) ->
  accumulate([], Fn, Ls).


-spec accumulate(Acc::[U], Fn::fun((T) -> U), Ls::[T]) -> [U].
accumulate(Acc, _Fn, []) ->
  lists:reverse(Acc);
accumulate(Acc, Fn, [H | T]) ->
  accumulate([Fn(H) | Acc], Fn, T).