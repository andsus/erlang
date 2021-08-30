-module(collatz_conjecture).

-export([steps/1]).


steps(N) when N =< 0 -> erlang:error(badarg);
steps(N) -> steps_reducer(N, 0).

steps_reducer(1, Acc) -> Acc;
steps_reducer(N, Acc) when (N rem 2 =:= 0) -> steps_reducer(N div 2, Acc+1);
steps_reducer(N, Acc) -> steps_reducer(3*N + 1, Acc+1).