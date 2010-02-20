-module(first_example).

-export([say_hello/1]).

say_hello(Name) ->
    io:format("hello ~s~n", Name).
