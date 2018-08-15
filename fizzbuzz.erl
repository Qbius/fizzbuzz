-module(fizzbuzz).
-export([start/0]).

start() ->
    lists:foreach(fun io:fwrite/1, [fizzbuzz(N) || N <- lists:seq(1, 100)]).
    
fizzbuzz(N) when N rem 3 =:= 0 andalso N rem 5 =:= 0 ->
    "Fizzbuzz!\n";
fizzbuzz(N) when N rem 3 =:= 0 ->
    "Fizz!\n";
fizzbuzz(N) when N rem 5 =:= 0 ->
    "Buzz!\n";
fizzbuzz(_) ->
    "".
