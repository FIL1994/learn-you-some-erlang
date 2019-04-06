-module(functions).
-compile(export_all).

old_enough(X) when X >= 16 -> true;
old_enough(_) -> false.

%% comma acts like the operator andalso
%% semicolon acts like orelse
right_age(X) when X >= 16, X=< 104 ->
    true;
right_age(_) ->
    false.

wrong_age(X) when X < 16; X > 104 ->
    true;
wrong_age(_) ->
    false.