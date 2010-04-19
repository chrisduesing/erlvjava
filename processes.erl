%%%-------------------------------------------------------------------
%%% @author Chris Duesing <chris.duesing@gmail.com>
%%% @copyright (C) 2010, Chris Duesing
%%% @doc
%%%
%%% @end
%%% Created : 18 Apr 2010 by Chris Duesing <chris.duesing@gmail.com>
%%%-------------------------------------------------------------------
-module(processes).

%% API
-export([start_simple/0, start_loop/0, run_loop/1, start_receiver/0, run_receiver/0]).

%%%===================================================================
%%% API
%%%===================================================================

%%--------------------------------------------------------------------
%% @doc
%% @spec
%% @end
%%--------------------------------------------------------------------

start_simple() ->
    spawn(fun() -> io:format("Oh hai world!") end).


start_loop() ->
    spawn(processes, run_loop, [5]).

run_loop(0) ->
    io:format("done!~n");

run_loop(LoopsLeft) ->
    io:format("loops left: ~w~n", [LoopsLeft]),
    run_loop(LoopsLeft - 1).


start_receiver() ->
    Pid = spawn(processes, run_receiver, []),
    Pid ! "Joe",
    Pid ! "Chris",
    Pid ! 5,
    ok.

run_receiver() ->
    receive
	"Chris" ->
	    io:format("Hey Chris!~n"),
	    run_receiver();
	SomeoneElse when is_list(SomeoneElse) ->
	    io:format("Hey, ~s have you Seen Chris?~n", [SomeoneElse]),
	    run_receiver();
	X ->
	    io:format("ack, ~w? seriously?~n", [X]),
	    error
    end.


