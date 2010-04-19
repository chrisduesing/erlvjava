%%%-------------------------------------------------------------------
%%% @author Chris Duesing <chris.duesing@gmail.com>
%%% @copyright (C) 2010, Chris Duesing
%%% @doc
%%%
%%% @end
%%% Created : 18 Apr 2010 by Chris Duesing <chris.duesing@gmail.com>
%%%-------------------------------------------------------------------
-module(control_flow).

%% API
-export([simple_case_statement/0, case_statement/1, simple_function/0, case_function/1, start_print_loop/0]).

%%%===================================================================
%%% API
%%%===================================================================

%%--------------------------------------------------------------------
%% @doc
%% @spec
%% @end
%%--------------------------------------------------------------------

simple_case_statement() ->

    X = "Joe",
    case X of
	"Chris" ->
	    io:format("Hey Chris!~n");
	SomeoneElse when is_list(X) ->
	    io:format("Hey, ~s have you Seen Chris?~n", [SomeoneElse]);
	_ ->
	    error
    end.

case_statement(X) ->

    case X of
	"Chris" ->
	    io:format("Hey Chris!~n");
	SomeoneElse when is_list(SomeoneElse) ->
	    io:format("Hey, ~s have you Seen Chris?~n", [SomeoneElse]);
	_ ->
	    error
    end.

simple_function() ->
    X = 5,
    Y = 4,
    X + Y.

case_function("Chris") ->
    io:format("Hey Chris!~n"); 

case_function(SomeoneElse) when is_list(SomeoneElse) ->
    io:format("Hey, ~s have you Seen Chris?~n", [SomeoneElse]);

case_function(_) ->
    error.

start_print_loop() ->
    X = [1, 2, 3],
    print_loop(X).

print_loop([H | T]) ->
    io:format("printing ~p~n", [H]),
    print_loop(T);

print_loop([]) ->
    io:format("finished printing.~n").

