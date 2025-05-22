-module(error_provider).
-behaviour(ai_base).

-export([call/2]).

call(_Message, _Config) ->
    {error, test_error}.
