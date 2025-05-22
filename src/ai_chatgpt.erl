-module(ai_chatgpt).
-behaviour(ai_base).

-export([call/2]).

call(Message, Config) when is_binary(Message), is_map(Config) ->
    %% Placeholder for actual HTTP request to OpenAI ChatGPT API
    io:format("ChatGPT called with ~p\n", [Message]),
    %% In real implementation, use httpc:request with API key in Config
    {ok, <<"chatgpt response to ", Message/binary>>}.
