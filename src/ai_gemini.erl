-module(ai_gemini).
-behaviour(ai_base).

-export([call/2]).

call(Message, Config) when is_binary(Message), is_map(Config) ->
    %% Placeholder for actual HTTP request to Gemini API
    io:format("Gemini called with ~p\n", [Message]),
    {ok, <<"gemini response to ", Message/binary>>}.
