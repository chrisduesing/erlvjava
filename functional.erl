%%%-------------------------------------------------------------------
%%% @author Chris Duesing <chris.duesing@gmail.com>
%%% @copyright (C) 2010, Chris Duesing
%%% @doc
%%%
%%% @end
%%% Created : 18 Apr 2010 by Chris Duesing <chris.duesing@gmail.com>
%%%-------------------------------------------------------------------
-module(functional).

%% API
-export([first_class/0, assign_fun/0, anon_fun/0]).

%%%===================================================================
%%% API
%%%===================================================================

%%--------------------------------------------------------------------
%% @doc
%% @spec
%% @end
%%--------------------------------------------------------------------

first_class() ->
    io:format("Yea, that's how I roll.~n"),
    4 + 5.

assign_fun() ->
    A = fun first_class/0,
    io:format("notice, first_class hasn't been evaluated yet.~n"),  
    io:format("value: ~p~n", [A()]).  


anon_fun() ->
    Evens = lists:filter(fun(X) -> X rem 2 == 0 end, [1, 2, 3, 4, 5, 6]),
    io:format("evens: ~p~n", [Evens]).
	
		   



%%%===================================================================
%%% Internal functions
%%%===================================================================
