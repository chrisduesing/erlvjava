%%%-------------------------------------------------------------------
%%% @author Chris Duesing <chrisduesing@Chris-Duesings-MacBook-Pro.local>
%%% @copyright (C) 2010, Chris Duesing
%%% @doc
%%%
%%% @end
%%% Created : 18 Apr 2010 by Chris Duesing <chrisduesing@Chris-Duesings-MacBook-Pro.local>
%%%-------------------------------------------------------------------
-module(case_example).

%% API
-export([example/0]).

%%%===================================================================
%%% API
%%%===================================================================

%%--------------------------------------------------------------------
%% @doc
%% @spec
%% @end
%%--------------------------------------------------------------------
example() ->

    X = "Chris",
    case X of
	"Chris" ->
	    io:format("Hey Chris!~n");
	SomeoneElse ->
	    io:format("Hey, ~s have you Seen Chris?~n", [SomeoneElse]);
	_ ->
	    error
    end.


%%%===================================================================
%%% Internal functions
%%%===================================================================
