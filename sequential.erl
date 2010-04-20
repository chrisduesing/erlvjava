%%%-------------------------------------------------------------------
%%% @author Chris Duesing <chris.duesing@gmail.com>
%%% @copyright (C) 2010, Chris Duesing
%%% @doc
%%%
%%% @end
%%% Created : 18 Apr 2010 by Chris Duesing <chris.duesing@gmail.com>
%%%-------------------------------------------------------------------
-module(sequential).

%% API
-export([single_assignment/0, lists/0, tuples/0, binaries/0]).

%%%===================================================================
%%% API
%%%===================================================================

%%--------------------------------------------------------------------
%% @doc
%% @spec
%% @end
%%--------------------------------------------------------------------

single_assignment() ->
    
    X = 5,
    X = 4.


lists() ->
    
    L = [1, 2, 3],

    io:format("~p~n", [L]),


    
    X = lists:nth(2, L),

    io:format("2nd element is ~w~n", [X]),
    


    [A, B, C] = [1, 2, 3],

    io:format("B equals ~p~n", [B]),


    
    [Head | Tail] = [1, 2, 3],

    io:format("Head equals ~p~n", [Head]),
    io:format("Tail equals ~p~n", [Tail]),



    [H | T] = "Hello World",

    io:format("head equals ~p~n", [H]), 
    io:format("tail equals ~p~n", [T]).


tuples() ->
    
    X = {1, 2, elephant},

    Nested = {X, {name, "Chris"}, [1, 2, 3]},

    {Y, Z} = {3, 4}. 


binaries() ->
    
    Binary = <<3,4,5>>,
    
    AnotherBinary = <<"Chris">>,

    <<A, B, C/binary>> = <<1, 2, "Chris">>.



%%%===================================================================
%%% Internal functions
%%%===================================================================
