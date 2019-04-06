-module(recursive).

-export([fac/1, tail_len/1, duplicate/2]).

fac(0) -> 1;
fac(N) when N > 0 -> N * fac(N - 1).


tail_len(L) -> tail_len(L,0).
 
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T,Acc+1).

duplicate(0, _) ->
    [];
duplicate(N, Term) when N > 0 ->
    [Term|duplicate(N-1, Term)].
