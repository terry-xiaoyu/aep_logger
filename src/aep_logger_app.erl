%%%-------------------------------------------------------------------
%% @doc aep_logger public API
%% @end
%%%-------------------------------------------------------------------

-module(aep_logger_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    aep_logger_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
